%% The contents of this file are subject to the Mozilla Public License
%% Version 1.1 (the "License"); you may not use this file except in
%% compliance with the License. You may obtain a copy of the License
%% at http://www.mozilla.org/MPL/
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and
%% limitations under the License.
%%
%% The Original Code is RabbitMQ.
%%
%% The Initial Developer of the Original Code is GoPivotal, Inc.
%% Copyright (c) 2018 Pivotal Software, Inc.  All rights reserved.
%%

-module(rabbit_core_ff).

-export([list/0]).

list() ->
    #{quorum_queue => #{
        desc          => "Support queues of type `quorum`",
        stability     => experimental,
        migration_fun => {rabbit_quorum_queue_ff, main}
       },

      empty_basic_get_metric => #{
        desc          => "Count AMQP `basic.get` on empty queues in stats",
        stability     => stable
       }
     }.
