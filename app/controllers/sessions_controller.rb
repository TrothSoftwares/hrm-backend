class SessionsController < Devise::SessionsController
  respond_to :json

   # POST /api/users/sign_in
   def create
     respond_to do |format|
       format.json do
         self.resource = warden.authenticate!(auth_options)
         data = {
           id: resource.id,
           token: resource.authentication_token,
           email: resource.email,
           role: resource.role,
         }
         render json: data, status: :created

       end
     end

   end


   def destroy
   # authorize! :delete, @user
   @user.destroy
   respond_to do |format|
     format.json { head :no_content }
   end
 end



end
