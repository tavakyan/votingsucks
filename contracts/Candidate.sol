import './tokens/VotingForToken.sol';
import './tokens/VotingAgainstToken.sol';

contract Candidate {
  uint id;

  VotingForToken forToken;
  VotingAgainstToken againstToken;

  function Candidate(uint _id) {
    id = _id;

    // Note: initial conditions mean each candidate has 100, 100 tokens already
    forToken = (new VotingForToken());
    againstToken = (new VotingAgainstToken());
  }

  function getForTokenAmount() returns (uint256 balance) {
    balance = forToken.balanceOf(this);
    return balance;
  }

  function getAgainstTokenAmount() returns (uint256 balance) {
    balance = againstToken.balanceOf(this);
    return balance;
  }
}
