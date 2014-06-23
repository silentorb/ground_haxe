package ground;

/**
 * @author Christopher W. Johnson
 */

@:expose interface IStorage
{
  function run_query(query:Classic_Query);
	function run_update(update:Update);
}