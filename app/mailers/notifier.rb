class Notifier < ActionMailer::Base
  default from: "baqueta@blocodobaqueta.com.br"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.email_create_user.subject
  #
  def email_create_user(user)
    @user = user
    @sender_name = @user.name_tag
    

    mail to:"gustavoagomes@gmail.com", :subject => "Cadastro efetuado com sucesso! =)"
  end
end
