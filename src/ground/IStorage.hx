package ground;
import ground.query.Classic_Query;

/**
 * @author Christopher W. Johnson
 */

@:expose interface IStorage
{
  function run_query(query:Classic_Query, response:Response):Void;
	function run_update(update:Update, response:Response):Void;
}