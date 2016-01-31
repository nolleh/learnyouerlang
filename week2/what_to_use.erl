-module(what_to_use).
-export([list_use/2, list_case_use/2]).

list_use ([H|[]],[H|[]]) -> 
  io:format("one, one");
list_use ([_|_], [_|_]) ->
  io:format("any, any").


list_case_use (list1, list2) ->
  case (list1, list2) of
  	([H|[]], [H|[]]) -> io:format("one, one");
  case (list1, list2) of
  	([_|_], [_|_]) -> io:format("any, any")
  end.