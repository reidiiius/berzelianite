-module(allotrope).
-export([
  acquire/1,
  allodium/0,
  allodium/1,
  datastore/0,
  ennead/1,
  gather/1,
  keylist/0,
  obtain/1
]).
-include("metalloid.hrl").

acquire(A) ->
  L1 = re:replace(
         proplists:get_value(A, tuplist(), string:copies("____ ", 12)),
         [32], [183], [global, {return, list}]),
  L2 = re:replace(L1, [95], [160], [global, {return, list}]), L2.

allodium() ->
  lists:flatmap(fun(Q) -> [{Q, ennead(Q)}] end, keylist()).

allodium([]) -> [];
allodium([H | T]) -> [{H, ennead(H)} | allodium(T)].

datastore() ->
  orddict:from_list(tuplist()).

ennead(A) ->
  V = nucleon(A, cn),
  {
  pegbox(V, 50),
  pegbox(V, 25),
  pegbox(V, 60),
  pegbox(V, 35),
  pegbox(V, 10),
  pegbox(V, 45),
  pegbox(V, 20),
  pegbox(V, 55),
  pegbox(V, 30)
  }.

gather([]) -> [];
gather(AL) ->
  TL = proplists:split(tuplist(), AL),
  lists:flatten(element(1, TL)).

gluon(S, [H|[T|_]]) ->
  string:concat(
    string:substr(S, element(1, H), element(2, H)),
    string:substr(S, element(1, T), element(2, T))).

keylist() ->
  lists:sort(proplists:get_keys(tuplist())).

nucleon(Neutron, Proton) ->
  gluon(acquire(Neutron), proplists:get_value(Proton, hadron())).

obtain(A) ->
  case lists:member(A, keylist()) of
    true -> string:tokens(proplists:get_value(A, tuplist()), [32,95]);
    false -> lists:duplicate(7, string:chars(63, 4))
  end.

pegbox(S, N) ->
  string:concat(string:substr(S, N+1, length(S)-N), string:substr(S, 1, N)).


