contract('VotingForToken', function(accounts) {
  it("should contain 100 voting for tokens", function(done) {
    VotingForToken.new().then(function(instance) {
      VotingForToken.at(instance.address).balanceOf.call(accounts[0]).then(function(balance){
        var balanceAsNumber = balance.toNumber();
        console.log(balanceAsNumber);
        assert.equal(balanceAsNumber, 100, "100 for tokens not in first account");
      });
      // console.log(instance.address);
    }).catch(function(e) {
      // There was an error! Handle it.
      console.log("Error creating instance of for tokens");
    });
    assert.isTrue(true);
    done();
  });
});
