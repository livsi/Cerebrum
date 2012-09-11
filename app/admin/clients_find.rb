# encoding: utf-8
ActiveAdmin.register_page "Find client" do

  menu :label => proc{ I18n.t("active_admin.client_find") }, :parent => "Clients"

  content do
    panel I18n.t("active_admin.client_find") do
      para "Тут будет форма"
    end
  end

end
