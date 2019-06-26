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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.Type do
  @moduledoc """
  A protocol buffer message type.

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.Field.t)`, *default:* `nil`) - The list of fields.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The fully qualified message name.
  *   `oneofs` (*type:* `list(String.t)`, *default:* `nil`) - The list of types appearing in `oneof` definitions in this type.
  *   `options` (*type:* `list(GoogleApi.ServiceConsumerManagement.V1.Model.Option.t)`, *default:* `nil`) - The protocol buffer options.
  *   `sourceContext` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext.t`, *default:* `nil`) - The source context.
  *   `syntax` (*type:* `String.t`, *default:* `nil`) - The source syntax.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => list(GoogleApi.ServiceConsumerManagement.V1.Model.Field.t()),
          :name => String.t(),
          :oneofs => list(String.t()),
          :options => list(GoogleApi.ServiceConsumerManagement.V1.Model.Option.t()),
          :sourceContext => GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext.t(),
          :syntax => String.t()
        }

  field(:fields, as: GoogleApi.ServiceConsumerManagement.V1.Model.Field, type: :list)
  field(:name)
  field(:oneofs, type: :list)
  field(:options, as: GoogleApi.ServiceConsumerManagement.V1.Model.Option, type: :list)
  field(:sourceContext, as: GoogleApi.ServiceConsumerManagement.V1.Model.SourceContext)
  field(:syntax)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Type do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.Type.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Type do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
