class ApplicationController < ActionController::API

    def update

        bird = Bird.find(params[:id])
        if bird
            bird.update(bird_params)
            render json: bird
        else
            render json: {error: "Bird Not Found"}, status: :not_found
        end
    end

    private
    def bird_params
        params.permit(:name, :species, :likes)

    end

end
