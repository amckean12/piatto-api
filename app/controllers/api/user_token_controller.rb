class Api::UserTokenController < Knock::AuthTokenController
  #Solves 422 issue with rails 5.2 and Knock
  #skip_before_action :verify_authenticity_token

end
