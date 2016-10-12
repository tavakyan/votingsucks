import "./VotingForToken.sol";
import "./VotingAgainstToken.sol";

// TODO 
// This needs to be refactored to two factory classes
contract VotingTokenFactory {
    mapping(address => address[]) public created;
    mapping(address => bool) public isVotingForToken; //verify without having to do a bytecode check.
    mapping(address => bool) public isVotingAgainstToken; //verify without having to do a bytecode check.

    function VotingTokenFactory() {
    }

    function createVotingTokens() returns (address sender) {
        VotingForToken newForToken = new VotingForToken();
        VotingAgainstToken newAgainstToken = new VotingAgainstToken();

        created[msg.sender].push(address(newForToken));
        created[msg.sender].push(address(newAgainstToken));

        isVotingForToken[address(newForToken)] = true;
        isVotingAgainstToken[address(newAgainstToken)] = true;

        //the factory will own the created tokens. You must transfer them.
        if (!newForToken.transfer(msg.sender, 100)){
          throw;
        }
        //the factory will own the created tokens. You must transfer them.
        if (!newAgainstToken.transfer(msg.sender, 100)){
          throw;
        }

        return msg.sender;
    }
}
