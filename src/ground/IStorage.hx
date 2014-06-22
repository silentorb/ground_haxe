package ground;

/**
 * @author Christopher W. Johnson
 */

@:expose interface IStorage 
{
  function run_query(query:Query);
	function run_update(update:Update);
}