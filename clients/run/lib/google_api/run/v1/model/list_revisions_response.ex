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

defmodule GoogleApi.Run.V1.Model.ListRevisionsResponse do
  @moduledoc """
  ListRevisionsResponse is a list of Revision resources.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "serving.knative.dev/v1".
  *   `items` (*type:* `list(GoogleApi.Run.V1.Model.Revision.t)`, *default:* `nil`) - List of Revisions.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of this resource, in this case "RevisionList".
  *   `metadata` (*type:* `GoogleApi.Run.V1.Model.ListMeta.t`, *default:* `nil`) - Metadata associated with this revision list.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t() | nil,
          :items => list(GoogleApi.Run.V1.Model.Revision.t()) | nil,
          :kind => String.t() | nil,
          :metadata => GoogleApi.Run.V1.Model.ListMeta.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:apiVersion)
  field(:items, as: GoogleApi.Run.V1.Model.Revision, type: :list)
  field(:kind)
  field(:metadata, as: GoogleApi.Run.V1.Model.ListMeta)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ListRevisionsResponse do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ListRevisionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ListRevisionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
