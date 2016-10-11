contract('VotingTokenFactory', function(accounts) {

  it("should create & transfer 100 for and 100 against tokens", function(done) {
    //var voting_token_factory = VotingTokenFactory.at(VotingTokenFactory.deployed_address);
    var token_factory = VotingTokenFactory.deployed();

    var create = token_factory.createVotingTokens.call(accounts[0]).then(function(addressFor, addressAgainst) {
      assert.isTrue(false);
      // var balanceFor = addressFor.balanceOf.call(addressFor).then(function(balance) {
      //   assert.equal(balance.valueOf(), 100, "100 for tokens were not in the first account");
      // });
      // assert.equal(balanceFor.valueOf(), 100, "100 for tokens were not in the first account");
      //assert.equal(balanceAgainst.valueOf(), 100, "100 against tokens were not in the first account");
    });
    // assert.isTrue(true);
    // done();
    return create;
  });
});
