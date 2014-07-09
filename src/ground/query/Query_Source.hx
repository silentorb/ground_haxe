package ground.query;

/**
 * @author Christopher W. Johnson
 */

typedef Query_Source =
{
  trellis:String,
	?filters:Array<Dynamic>,
	?sorts:Array<Sort>,
	?pager:Pager,
	?range:Range,
	?expansions:Array<String>,
	?properties:Array<String>
}