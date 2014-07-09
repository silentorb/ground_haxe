package ground.query;
import metahub.schema.Namespace;
import metahub.schema.Schema;
import metahub.schema.Trellis;

/**
 * ...
 * @author Christopher W. Johnson
 */
class Classic_Query
{
	public var trellis:Trellis;
	public var filters:Array<Dynamic>;
	public var sorts:Array<Sort>;
	public var range:Range;
	public var expansions:Array<String>;
	public var properties:Array<String>;
	
	public function new() 
	{
		
	}
	
	public function extend(source:Query_Source, schema:Schema, namespace:Namespace) {
		if (source.trellis == null)
			throw new Exception("Request is missing trellis argument.", 400);
			
		trellis = schema.get_trellis(source.trellis, namespace, true);
		filters = source.filters;
		sorts = source.sorts;
		properties = source.properties;
		expansions = source.expansions;
		if (source.range != null) {
			range = source.range;
		}
		else if (source.pager != null) {
			range = cast { };
			if (source.pager.offset != null) {
				range.start = source.pager.offset;
			}
			if (source.pager.limit != null) {
				range.length = source.pager.limit;
			}
		}
	}
}