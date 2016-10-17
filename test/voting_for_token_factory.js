contract('VotingForTokenFactory', function(accounts) {
  it("should create 100 tokens for owner at address 0", function(done) {
    var factory = VotingForTokenFactory.deployed();

    var account_one = accounts[0];

    factory.create({from: account_one}).then(function(address){
      //console.log(address);
      return address;
    }).then(function(address){
      var token = VotingForToken.deployed();
      token.balanceOf.call(account_one).then(function(bal){
        var balance = bal.toNumber();
          assert.equal(balance, 100, "Should have transfered 100 to owner on account 0");
      });
    });
    
    done();
  });
});
