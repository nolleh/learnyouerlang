-module(chap3).
-export([head/1, second/1, third/1, same/2, valid_time/1]).

head([H|_]) -> H.

second([_,X|_]) -> X.

third([_,_,Y|_]) -> Y.

same(X,X) ->
    true;
same(_,_) ->
    false.

valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
    io:format("The Date tuple (~p) says today is: ~p/~p/~p,~n",[Date,Y,M,D]),
    io:format("The time tuple (~p) indicates: ~p:~p:~p.~n", [Time,H,Min,S]);
valid_time(_) ->
    io:format("Stop feeding me wrong data!~n").