class TeamTransferOwnershipMailer < ApplicationMailer
  def transfer_ownership_mail(team)
    @team = team
    mail to: @team.owner.email, subject: I18n.t('views.messages.transfer_ownership_mail')
  end
end
