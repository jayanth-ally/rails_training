class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        gallery_index_path
    end

    private
    def current_cart
        begin
            Cart.find(session[:cart_id])
        rescue ActiveRecord::RecordNotFound
            cart = Cart.create
            session[:cart_id] = cart.id
            cart
        end
    end

    def destroy_cart
        cart = Cart.find(session[:cart_id])
        cart.destroy
        session[:cart_id]
    end
end
