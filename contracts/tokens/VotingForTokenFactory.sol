import "./VotingForToken.sol";

contract VotingForTokenFactory {

  mapping(address => address[]) public created;
  mapping(address => bool) public isVotingForToken; //verify without having to do a bytecode check.

  function VotingForTokenFactory() {

  }

  function create() returns (address sender) {
    VotingForToken newToken = (new VotingForToken());
    created[msg.sender].push(address(newToken));
    isVotingForToken[address(newToken)] = true;
    newToken.transfer(msg.sender, uint256(100)); //the factory will own the created tokens. You must transfer them.
    return address(newToken);
   }
}
