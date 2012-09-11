# encoding: utf-8
ActiveAdmin.register_page "Dashboard" do

  menu :label => proc{ I18n.t("active_admin.dashboard") }, :priority => 1

  content do
    panel 'Устройства' do
      table_for Host.order("log_count Desc").limit(10), :class=>"index_table" do |t|
        t.column("IP Адрес") { |host| link_to host.name, admin_host_path(host)}
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
        t.column("Количество логов") do |host|
          host.log_count.to_s
        end
      end
    end
  end
end