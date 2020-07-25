class Ship

 attr_reader :name, :type, :booty
  @@ship = []

    def initialize(args)
        @name = args[:name]
        @type = args[:type]
        @booty = args[:booty]
        @@ship << self

    end

    def self.all
        @@ship
    end

    def self.clear
        @@ship.clear
    end


end
