class AgendaDeleteMailer < ApplicationMailer
  def agenda_delete_mail(agenda)
    @agenda = agenda
    team_members = @agenda.team.members
    mail to: team_members.pluck(:email), subject: I18n.t('views.messages.agenda_delete')
  end
end
