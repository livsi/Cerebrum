# encoding: utf-8
ActiveAdmin.register Building, { :sort_order => "name_asc" }  do
  menu :label => proc{ I18n.t("active_admin.buildings") }, :priority => 2
  
  filter :name, :label => "Дому"
  filter :region, :label => "Региону"

  sidebar "Дом", :only => :show do
    attributes_table_for building do
      row("Дом") { link_to building.name, "http://maps.yandex.ru/?text=#{building.name}",{ :target => "_new", :title => "Показать на карте" } }
      row("ЖКХ") { building.housing unless building.housing.nil? } 
    end
  end
  
  sidebar "Контакты", :only => :show do
    attributes_table_for building do
      building.phones.each do |phone|
        row("#{phone.name}") { phone.number }
      end
    end
  end

  index do 
    column "Дом", :sortable => :name do |building|
      link_to building.name, admin_building_path(building)
    end
    column "ЖКХ " do |building|
      building.housing.nil? ? "-" : (link_to building.housing.name, admin_housing_path(building.housing))
    end
  end
  
  form do |f|
    f.inputs do
      f.input :name, :label => "Дом"
      f.input :region, :label => "Регион"
      f.input :housing, :label => "ЖКХ"
    end
    f.has_many :phones do |i|
      i.input :_destroy, :as => :boolean, :label => "delete" unless i.object.id.nil?
      i.input :name, :label => "Описание"
      i.input :number, :label => "Номер"
    end
    f.buttons
  end
  
  show :title => :page_title do
    panel "Общие сведения" do
       attributes_table_for building do
          row("Клиенты") { link_to "#{building.clients.count} шт", admin_clients_path( 'utf8' => '✓', 'q[building_id_eq]' => building.id) }
          row("Оборудование") { link_to "#{building.hosts.count} шт", admin_hosts_path( 'utf8' => '✓', 'q[building_id_eq]' => building.id) }
       end
    end
    
    panel "Оборудование" do
      table_for building.hosts do |t|
        t.column("IP Адрес") { |host| link_to host.name, admin_host_path(host)}
        t.column("MAC") { |host| host.mac }
        t.column "Устройство" do |host|
          host.device_type.model unless host.device_type.nil? 
        end
        column "Состояние" do |host| 
          if host.lastms.is_a?(Time) 
            status_tag (host.lastms > Time.now-2.minute ? 'Доступен' : 'Недоступен' ), 
            ( host.lastms > Time.now-2.minute ? :ok : :error ), 
            :title => time_ago_in_words(host.lastms)  
          else
            status_tag "Неизвестно", :title => "Сроду не видели"
          end
        end
        t.column("Подъедз") { |host|  host.porch }
        t.column("Местонахождение") do |host| 
          status_tag host.location, ( host.location.eql?('Чердак') ? :ok : :warning ) unless host.location.nil? or host.location.empty?   
        end  
      end unless building.hosts.empty?
      link_to "Добавить оборудование", new_admin_host_path( 'settings' => { 'building_id' => building })
    end
  end  
  
end
