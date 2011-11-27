# encoding: utf-8
ActiveAdmin.register Building do
  menu :parent => "Справочник"
  
  filter :name, :label => "Дому"

  sidebar "Дом", :only => :show do
    attributes_table_for building do
      row("Дом") { link_to building.name, "http://maps.yandex.ru/?text=#{building.name}",{ :target => "_new", :title => "Показать на карте" } }
      row("Контакты ЖКХ") { building.housing.phone } 
    end
  end

  index do 
    column "Дом", :name
    column "Контакты ЖКХ" do |building|
      building.housing.nil? ? "-" : building.housing.phone
    end
    default_actions  
  end
  
  form do |f|
    f.inputs do
      f.input :name, :label => "Дом"
      f.input :housing, :label => "ЖКХ"
    end
    f.buttons
  end
  
  show :title => :page_title do
    panel "Оборудование" do
      table_for building.hosts do |t|
        t.column("IP Адрес") { |host| link_to host.name, admin_host_path(host)}
        t.column("Местонахождение") do |host| 
          status_tag host.location, ( host.location.eql?('Чердак') ? :ok : :warning ) unless host.location.nil?  
        end  
      end
    end
  end  
  
end
