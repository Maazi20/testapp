class Product < ActiveRecord::Base
  has_many :qualities
  has_many :otypes, through: :qualities

  has_many :variants	  

  after_create :create_variants



  def create_variants

    _arr = []

  	
  	_discount = 0
    _arr = []

    self.otypes.each do |ot|
      _subarray = []
      ot.ovalues.each do |ov|
        _subarray.push(ov.value)
      end
      _arr.push(_subarray)

    end  


     #combination made
     _i = _arr.length
     _i = _i - 1
     _j = 1
     _check = _arr[0]

	_arr =    _arr.reduce() { |acc, n| acc.product(n).map(&:flatten) }

     _check = _arr
     puts (_arr.length)
     puts ("-------------")
     puts (_arr.to_a)
      #update variant
 	  _i = _check.length
      _i = _i - 1

      #print check
       while _i >= 0 do
      	_variant = Variant.new
      	
      	_k  = _check[_i]

      	
      	#puts (_check[_i])
      	#puts (_check[_i].length)
      	_l = _k.length
      	_l = _l - 1
      	_price = self.price
		
		puts (_price)
      	puts ("------------")
      	
      	while _l >= 0
      		
      		_ovalue = Ovalue.where(value: _k[_l]).first
      		_discount = _ovalue.discount
      		puts (_discount)
      		puts ("------------")
      		_price = _price - _discount
      		_l = _l -  1
      		_ovalue.variants << _variant
      	end
      	_variant.price = _price
      	#puts (_price)
      	#puts ("--------")
      	_i = _i - 1
      	self.variants << _variant
      end
     
      


  end



end

