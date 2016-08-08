class SubmissionPolicy < ApplicationPolicy
  def author?
    @user == @record.author
  end
  private :author?

  def create?
    everyone
  end

  [:download_file?, :render_file?, :run?, :score?, :show?, :statistics?, :stop?, :test?, :quality_check?].each do |action|
    define_method(action) { admin? || author? }
  end

  def index?
    admin?
  end
end
