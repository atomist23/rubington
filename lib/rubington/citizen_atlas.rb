module Rubington
  class CitizenAtlas
    include HTTParty
    base_uri 'citizenatlas.dc.gov/newwebservices/locationverifier.asmx'
    format :xml
        
    # Find Outside Location
    def self.find_outside_location(location, city, state, zipcode)
   	    self.query("/findOutsideLocation", {:location => location, :city => city, :state => state, :zipcode => zipcode})
    end
    
    # Find DC Block From Intersection
    def self.find_dc_blk_from_intersection(crossstreet1, crossstreet2)
        query('/findDCBlkFromIntersection', {:crossstreet1 => crossstreet1, :crossstreet2 => crossstreet2})
    end
    
    # Find add from ssl
    def self.find_add_from_ssl(square, suffix, lot)
        query('/findAddFromSSL', {:square => square, :suffix => suffix, :lot => lot})
    end
    
    # Find DC Intersection through String
    def self.find_dc_inter_throu_string(intersection)
        query('/findDCInterThrouString', {:intersection => intersection})
    end
    
    # Find Mini Marid from Marid
    def self.find_mini_marid_from_marid(marid)
        query('/findMiniMARIDFromMARID', {:marid => marid})
    end

    # Find DC Intersection through Components
    def self.find_dc_inter_throu_components(crossstreet1, crossstreet2)
        query('/findDCInterThrouComponents', {:crossstreet1 => crossstreet1, :crossstreet2 => crossstreet2})
    end
    # Find Marid from Mini Marid
    def self.find_marid_from_mini_marid(minimarid)
        query('/findMARIDFromMiniMARID', {:minimarid => minimarid})
    end
    
    # Find Condo Unit from Aid
    def self.find_condo_unit_from_aid(aid)
        query('/FindCondoUnitFromAID', {:aid => aid})
    end
    
    # Find find location
    def self.find_location(str)
        query('/findLocation', {:str => str})
    end
    
    # Find reverse geocoding
    def self.reverse_geocoding(x, y)
        query('/reverseGeocoding', {:x => x, :y => y})
    end
    
    # Verify DC Address through components
    def self.verify_dc_address_throu_components(addnumber, addnumbersuffix, stname, sttype, quad)
        query('/verifyDCAddressThrouComponents', {:addnumber => addnumber, :addnumbersuffix => addnumbersuffix, :stname => stname, :sttype => sttype, :quad => quad})
    end
    
    # Find ssl from Aid
    def self.find_ssl_from_aid(aid)
        query('/findSSLFromAID', {:aid => aid})
    end
    
    # Find alias from Aid
    def self.find_alias_from_aid(aid)
        query('/findAliasFromAID', {:aid => aid})
    end
    
    # Find in outside location
    def self.find_in_outside_location(location, city, state, zipcode)
        query('/findInOutsideLocation', {:location => location, :city => city, :state => state, :zipcode => zipcode})
    end
    
    # Find aid
    def self.find_aid(aid)
        query('/findAID', {:aid => aid})
    end
    
    # Find DC Block through Components
    def self.find_dc_blk_throu_components(onstreet, fromstreet, tostreet)
        query('/findDCBlkThrouComponents', {:onstreet => onstreet, :fromstreet => fromstreet, :tostreet => tostreet})
    end
    
    # Find ssl from square suffix
    def self.find_ssl_from_square_suffix(square, suffix)
        query('/findSSLFromSquareSuffix', {:square => square, :suffix => suffix})
    end
    
    # Find submit address
    def self.submit_address(address, name, agency, phone, email, source, comment, withverification)
        query('/submitAddress', {:address => address, :name => name, :agency => agency, :phone => phone, :email => email, :source => source, :comment => comment, :withverification => withverification})
    end
    
    # Verify DC address through string
    def self.verify_dc_address_throu_string(address)
        query('/verifyDCAddressThrouString', {:address => address})
    end
    
    # Find unit from aid
    def self.find_unit_from_aid(aid)
        query('/FindUnitFromAID', {:aid => aid})
    end
    
    # Performs the query and extracts the ReturnObject
    def self.query(uri, query)
      get(uri, :query => query)["ReturnObject"]
    end
  end
end
