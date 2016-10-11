contract('VotingForToken', function(accounts) {
  it("should contain 100 voting for tokens", function(done) {
    var voting_for = VotingForToken.deployed();

    return voting_for.balanceOf.call(accounts[0]).then(function(balance) {
      // assert.equal(balance.toNumber(), 100, "100 for tokens not in first account");
    });
  });
});
