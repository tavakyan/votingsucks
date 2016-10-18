import "./Candidate.sol";

contract CandidateRegistry {
  bool initialized;
  address stein;
  address johnson;
  address clinton;
  address trump;

  address[] candidates;

  function CandidateRegistry() {
    initialized = false;
  }

  /*function initialize() {
    if (initialized == true) {
      return;
    }

    stein = (new Candidate(0));
    johnson = (new Candidate(1));
    clinton = (new Candidate(2));
    trump = (new Candidate(3));

    initialized = true;
  }*/

  function getCandidate(uint id) returns (address) {
    if ( id > 3 )
      throw;

    return 0;
  }
}
