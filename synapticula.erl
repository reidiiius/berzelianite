-module(synapticula).
-export([
  acquire/1,
  allodium/0,
  allodium/1,
  course/1,
  datastore/0,
  ennead/1,
  gather/1,
  headstock/2,
  keylist/0,
  obtain/1,
  vesicle/0
]).

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

headstock(_, N) when (N < 2) or (N > 37) ->
  string:copies([95,95,32], 12);
headstock(A, N) when (N > 1) and (N < 38) ->
  S = acquire(A),
  L = string:len(S),
  string:concat(
    string:sub_string(S, N, L),
    string:sub_string(S, 1, N-1)).

keylist() ->
  lists:sort(proplists:get_keys(vesicle())).

obtain(A) ->
  case lists:member(A, keylist()) of
    true -> string:tokens(acquire(A), [32,95]);
    false -> lists:duplicate(7, [63,63])
  end.

vesicle() ->
     [{j2,<<"vv zq dd dd ry wu dd uw dd sx dd qz ">>},
      {j3,<<"vt dd tv xq dd ws dd uu dd sw dd qx ">>},
      {j5,<<"wr dd ut dd sv oq qo dd dd tu dd rw ">>},
      {j6,<<"vu dd tw dd rx wt dd uv yq dd dd qy ">>},
      {k1,<<"dd qx vt dd tv xq dd ws dd uu dd sw ">>},
      {k2,<<"yr dd dd qz vv zq dd xs dd wu dd uw ">>},
      {k5,<<"xr dd wt dd uv yq dd dd qy vu dd tw ">>},
      {k6,<<"vs dd tu dd rw wr dd ut dd dd oq qo ">>},
      {n0,<<"vr dd tt dd rv wq dd us dd su dd qw ">>},
     {j17,<<"dd dd tu dd rw wr dd ut dd sv oq qo ">>},
     {j23,<<"vv zq dd xs dd wu dd uw dd sx dd qz ">>},
     {j25,<<"qr vp dd dd pv rq wo dd dd yu dd ow ">>},
     {j26,<<"vv zq dd dd ry wu dd uw yr dd dd qz ">>},
     {j36,<<"vu dd tw xr dd wt dd uv yq dd dd qy ">>},
     {j56,<<"xr dd wt dd uv yq so dd qy dd dd tw ">>},
     {k12,<<"dd sx dd qz vv zq dd xs dd wu dd uw ">>},
     {k15,<<"dd rx wt dd uv yq dd dd qy vu dd tw ">>},
     {k25,<<"yr dd dd qz vv zq dd dd ry wu dd uw ">>},
     {k26,<<"vp dd dd pv rq wo dd uy dd dd ow qr ">>},
     {k34,<<"wr dd ut dd dd oq qo vs dd tu dd rw ">>},
     {k56,<<"vu dd tw dd rx wt dd dd yq dd os qy ">>},
    {j236,<<"vv zq dd xs dd wu dd uw yr dd dd qz ">>},
    {j256,<<"qr vp dd dd pv rq wo dd uy dd dd ow ">>},
    {j2k5,<<"qr vp dd dd pv rq dd dd uy yu dd ow ">>},
    {j2k6,<<"vv zq dd dd ry wu dd uw dd dd ot qz ">>},
    {j2y3,<<"vv zq to dd dd wu dd uw dd sx dd qz ">>},
    {j3k5,<<"yr dd ot qz dd zq dd dd ry wu dd uw ">>},
    {j3k6,<<"vo dd ty xu dd ww dd ux dd dd ov qq ">>},
    {j5y6,<<"wr dd ut dd sv oq qo vs dd dd dd rw ">>},
    {k125,<<"dd sx dd qz vv zq dd dd ry wu dd uw ">>},
    {k1j5,<<"dd ux yt dd ov qq vo dd dd xu dd ww ">>},
    {k1j6,<<"dd zq to dd ry wu dd uw yr dd dd qz ">>},
    {k256,<<"vp dd dd pv rq wo dd dd yu dd ow qr ">>},
    {k2j5,<<"yr dd dd qz vv zq to dd dd wu dd uw ">>},
    {k2j6,<<"vp dd dd pv rq wo dd uy yu dd dd qr ">>},
    {k2x1,<<"dd dd ot qz vv zq dd xs dd wu dd uw ">>},
    {k6x5,<<"vs dd tu dd rw wr dd dd dd sv oq qo ">>},
    {n167,<<"yr dd dd qz dd zq to dd ry wu dd uw ">>},
    {n345,<<"dd zq dd dd ry wu dd uw yr dd ot qz ">>},
    {n5y2,<<"vp dd dd pv rq dd dd uy yu dd ow qr ">>},
    {n6x2,<<"qr vp dd dd pv rq wo dd uy yu dd dd ">>},
   {j17y2,<<"vs dd dd dd rw wr dd ut dd sv oq qo ">>},
   {j23k6,<<"vv zq dd xs dd wu dd uw dd dd ot qz ">>},
   {j25y6,<<"or qp dd dd tv pq ro ws dd dd dd sw ">>},
   {j26y3,<<"vv zq to dd dd wu dd uw yr dd dd qz ">>},
   {j2k34,<<"or qp dd dd dd pq ro ws dd uu dd sw ">>},
   {j2k56,<<"vv zq dd dd ry wu dd dd yr dd ot qz ">>},
   {j34k6,<<"vt dd tv pq ro dd dd uu dd dd or qp ">>},
   {j56y7,<<"xr dd wt dd uv yq so dd qy vu dd dd ">>},
   {k12j5,<<"dd sx dd qz vv zq to dd dd wu dd uw ">>},
   {k17j5,<<"or qp vt dd tv pq ro dd dd uu dd dd ">>},
   {k2j17,<<"dd dd dd pq ro ws dd uu dd sw or qp ">>},
   {k25x1,<<"dd dd ot qz vv zq dd dd ry wu dd uw ">>},
   {k26x5,<<"vt dd dd pq ro ws dd dd dd sw or qp ">>},
   {k2j56,<<"yr dd dd qz vv zq to dd ry dd dd uw ">>},
   {k34x2,<<"wr dd dd dd sv oq qo vs dd tu dd rw ">>},
   {k56x4,<<"vu dd tw dd rx dd dd uv yq dd os qy ">>},
   {n25x6,<<"or qp vt dd dd pq ro ws dd dd dd sw ">>},
   {n26y5,<<"dd dd tv pq ro ws dd dd dd sw or qp ">>},
   {n45y2,<<"vo dd dd xu dd ww dd ux yt dd ov qq ">>},
   {n67x2,<<"dd ux dd dd ov qq vo dd ty xu dd ww ">>},
  {j136y7,<<"dd dd tw xr dd wt dd uv yq so dd qy ">>},
  {j167y2,<<"vu dd dd dd rx wt dd uv yq dd os qy ">>},
  {j246y3,<<"vv zq to dd ry dd dd uw yr dd dd qz ">>},
  {j26y34,<<"vv zq to xs dd dd dd uw yr dd dd qz ">>},
  {j2k6x5,<<"vv zq dd dd ry wu dd dd dd sx ot qz ">>},
  {j2k6y3,<<"vv zq to dd dd wu dd uw dd dd ot qz ">>},
  {j346y5,<<"yr dd ot qz vv zq dd dd ry dd dd uw ">>},
  {j3k5x4,<<"vu dd tw xr dd dd dd uv yq so dd qy ">>},
  {k135x4,<<"dd rx wt dd dd yq dd os qy vu dd tw ">>},
  {k157x6,<<"vv zq to dd ry wu dd dd yr dd dd qz ">>},
  {k1j6y7,<<"dd rx wt dd uv yq dd os qy vu dd dd ">>},
  {k257x1,<<"yr dd ot qz vv zq dd dd ry wu dd dd ">>},
  {k25x17,<<"dd sx ot qz vv zq dd dd ry wu dd dd ">>},
  {k2j5x1,<<"dd dd ot qz vv zq to dd dd wu dd uw ">>},
  {k2j5y6,<<"yr dd dd qz vv zq to xs dd dd dd uw ">>},
  {k345x2,<<"xr dd dd dd uv yq so dd qy vu dd tw ">>},
  {n167x4,<<"vu dd dd xr dd wt dd uv yq so dd qy ">>},
  {n345y7,<<"dd rx dd dd uv yq dd os qy vu dd tw ">>},
 {j2k56x4,<<"vv zq dd dd ry dd dd uw yr dd ot qz ">>},
 {j3k56x4,<<"vo dd ty xu dd dd dd ux yt dd ov qq ">>},
 {k1j56y7,<<"dd ux yt dd ov qq vo dd ty xu dd dd ">>},
 {k2j56y7,<<"yr dd dd qz vv zq to dd ry wu dd dd ">>}].


