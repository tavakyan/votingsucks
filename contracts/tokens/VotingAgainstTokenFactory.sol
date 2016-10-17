import "./VotingAgainstToken.sol";

contract VotingAgainstTokenFactory {

  mapping(address => address[]) public created;
  mapping(address => bool) public isVotingAgainstToken; //verify without having to do a bytecode check.

  function VotingAgainstTokenFactory() {

  }

  function create() returns (address sender) {
       VotingAgainstToken newAgainstToken = new VotingAgainstToken();

       created[msg.sender].push(address(newAgainstToken));

       isVotingAgainstToken[address(newAgainstToken)] = true;

       //the factory will own the created tokens. You must transfer them.
       if (!newAgainstToken.transfer(msg.sender, 100)){

         // TODO: How do you remove?
         //created[msg.sender].remove(address(newAgainstToken));

         isVotingAgainstToken[address(newAgainstToken)] = false;
         throw;
       }

       return address(newAgainstToken);
   }
}
