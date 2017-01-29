class EvaluateController < ApplicationController
    skip_before_filter  :verify_authenticity_token
    def run
        result  = eval(params['function_block'])
        if result.is_a?(String)
            render json: { "response": result }    
        else
            render json: { "response": "No way!"}
        end
    end    
end