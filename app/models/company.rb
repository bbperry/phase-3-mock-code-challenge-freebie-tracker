class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies


    def give_freebie(dev, item_name, value)
        dev_name = Dev.find_by name: dev
        Freebie.create(item_name: item_name, value: value, dev_id: dev_name.id, company_id: self.id)
    end

    

end
