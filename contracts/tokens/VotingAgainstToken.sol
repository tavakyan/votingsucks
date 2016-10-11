import "./HumanStandardToken.sol";

contract VotingAgainstToken is HumanStandardToken{
  function VotingAgainstToken() HumanStandardToken(
      100,
      "VotingAgainstToken",
      0,
      "VAT"
      ) {

  }
}
