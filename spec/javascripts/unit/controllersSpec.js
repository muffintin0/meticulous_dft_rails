describe('Mdft controllers', function() {
 
  describe('GsfcCtrl', function(){
 
    it('should create "phones" model with 3 phones', function() {
      var scope = {},
          ctrl = new PhoneListCtrl(scope);
 
      expect(scope.phones.length).toBe(3);
    });
  });
});