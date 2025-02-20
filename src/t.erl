-module(t).

-export([t/2]).

t(N, F) ->
    {T, V} = timer:tc(F),
    logger:info("~s: ~p", [N, T / 1000]),
    V.
