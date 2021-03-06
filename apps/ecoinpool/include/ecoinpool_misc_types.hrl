
%%
%% Copyright (C) 2011  Patrick "p2k" Schneider <patrick.p2k.schneider@gmail.com>
%%
%% This file is part of ecoinpool.
%%
%% ecoinpool is free software: you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.
%%
%% ecoinpool is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details.
%%
%% You should have received a copy of the GNU General Public License
%% along with ecoinpool.  If not, see <http://www.gnu.org/licenses/>.
%%

-type conf_property() :: {Key :: atom(), Value :: term()}.

-type abstract_coindaemon() :: {abstract_coindaemon, any(), any()}.

-type mmm() :: {ecoinpool_mmm, any()}.

-type peer() :: {IP :: string(), UserAgent :: string() | undefined}.

-type candidate() :: main | aux.

-type mining_extension() :: midstate | rollntime | submitold.

-type ecoinpool_rpc_request() :: {ecoinpool_rpc_request, pid(), peer(), atom(), list(), {binary(), binary()} | unauthorized, [mining_extension()], boolean()}.

-type reject_reason() :: stale | duplicate | target | data | time.
