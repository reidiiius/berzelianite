-module(synapticula).
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
-include("metaplasm.hrl").

acquire(A) ->
  binary:bin_to_list(course(A)).

allodium() ->
  lists:flatmap(fun(Q) -> [{Q,ennead(Q)}] end, keylist()).

allodium([]) -> [];
allodium([H | T]) -> [{H, ennead(H)} | allodium(T)].

course(A) ->
  case proplists:is_defined(A, vesicle()) of
    true ->
      B = proplists:get_value(A, vesicle()),
      binary:replace(B, <<100>>, <<95>>, [global]);
    false ->
      binary:copy(<<95,95,32>>, 12)
  end.

datastore() ->
  orddict:from_list(vesicle()).

ennead(A) ->
  Bj = headstock(A,31),
  Fn = headstock(A,16),
  Cn = headstock(A,37),
  Gn = headstock(A,22),
  Dn = headstock(A, 7),
  An = headstock(A,28),
  En = headstock(A,13),
  Bn = headstock(A,34),
  Fk = headstock(A,19),
  erlang:make_tuple( 9, Dn, [
    {1, Bj}, {2, Fn}, {3, Cn},
    {4, Gn}, {5, Dn}, {6, An},
    {7, En}, {8, Bn}, {9, Fk}
  ]).

gather([]) -> [];
gather(AL) ->
  TL = proplists:split(vesicle(), AL),
  lists:flatten(element(1, TL)).

gluon(B, [H|[T|_]]) ->
  string:concat(
    string:substr(B, element(1, H), element(2, H)),
    string:substr(B, element(1, T), element(2, T))).

headstock(_, N) when (N < 2) or (N > 37) ->
  string:copies([95,95,32], 12);
headstock(A, N) when (N > 1) and (N < 38) ->
  S = nucleon(A, cn),
  L = string:len(S),
  string:concat(
    string:sub_string(S, N, L),
    string:sub_string(S, 1, N-1)).

keylist() ->
  lists:sort(proplists:get_keys(vesicle())).

nucleon(Neutron, Proton) ->
  gluon(acquire(Neutron), proplists:get_value(Proton, lepton())).

obtain(A) ->
  case lists:member(A, keylist()) of
    true -> string:tokens(acquire(A), [32,95]);
    false -> lists:duplicate(7, [63,63])
  end.


