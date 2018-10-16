module FormsHelper
    def hello(name)
        "こんにちわ" + name + "さん！"
    end
    
    def check_age(age)
        if age.to_i >= 20
            "ようこそ、お楽しみください"
        else
            "このサイトは20歳以上限定です"
        end
    end
end
