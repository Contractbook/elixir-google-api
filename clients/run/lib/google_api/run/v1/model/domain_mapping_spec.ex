# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Run.V1.Model.DomainMappingSpec do
  @moduledoc """
  The desired state of the Domain Mapping.

  ## Attributes

  *   `certificateMode` (*type:* `String.t`, *default:* `nil`) - The mode of the certificate.
  *   `forceOverride` (*type:* `boolean()`, *default:* `nil`) - If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.
  *   `routeName` (*type:* `String.t`, *default:* `nil`) - The name of the Knative Route that this DomainMapping applies to. The route must exist.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateMode => String.t() | nil,
          :forceOverride => boolean() | nil,
          :routeName => String.t() | nil
        }

  field(:certificateMode)
  field(:forceOverride)
  field(:routeName)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.DomainMappingSpec do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.DomainMappingSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.DomainMappingSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
