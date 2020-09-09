module PostsHelper
    def user_check(post,user)
        if user_signed_in? 
            post.user.name  
        end
    end
end
