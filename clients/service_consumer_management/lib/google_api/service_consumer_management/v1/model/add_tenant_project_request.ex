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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.AddTenantProjectRequest do
  @moduledoc """
  Request to add a newly created and configured tenant project to a tenancy
  unit.

  ## Attributes

  *   `projectConfig` (*type:* `GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig.t`, *default:* `nil`) - Configuration of the new tenant project to be added to tenancy unit
      resources.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - Tag of the added project. Must be less than 128 characters. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :projectConfig => GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig.t(),
          :tag => String.t()
        }

  field(:projectConfig, as: GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.AddTenantProjectRequest do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.AddTenantProjectRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.AddTenantProjectRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
