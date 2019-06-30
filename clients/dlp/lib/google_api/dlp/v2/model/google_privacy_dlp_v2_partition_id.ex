# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId do
  @moduledoc """
  Datastore partition ID.
  A partition ID identifies a grouping of entities. The grouping is always
  by project and namespace, however the namespace ID may be empty.

  A partition ID contains several dimensions:
  project ID and namespace ID.

  ## Attributes

  *   `namespaceId` (*type:* `String.t`, *default:* `nil`) - If not empty, the ID of the namespace to which the entities belong.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The ID of the project to which the entities belong.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namespaceId => String.t(),
          :projectId => String.t()
        }

  field(:namespaceId)
  field(:projectId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PartitionId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
