# encoding: utf-8
ActiveAdmin.register AdminUser do
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end

  show do
    panel "Подробности" do
      attributes_table_for admin_user do
        row("Email") { admin_user.email }
        row("Последний заход") { admin_user.current_sign_in_at }
        row("Количество посещений") { admin_user.sign_in_count }
        
      end
    end
  end
end
