package ground;
import ground.query.Classic_Query;
import ground.query.Query_Source;
import metahub.Hub;
import metahub.schema.Namespace;

/**
 * ...
 * @author Christopher W. Johnson
 */

@:expose class Ground
{
  public var hub:Hub;
	public var storage:IStorage;
	
	public function new(hub:Hub, storage:IStorage) 
	{
		this.hub = hub;
		this.storage = storage;
	}
	
	function run_query(source:Query_Source, response:Response, namespace:Namespace) {
		var query = new Classic_Query();
		query.extend(source, hub.schema, namespace);
		return storage.run_query(query, response);
	}
		
	function run_update(source:Update_Source, response:Response) {
		var update = new Update();
		return storage.run_update(update, response);
	}
	
}