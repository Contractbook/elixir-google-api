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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.AttachTenantProjectRequest do
  @moduledoc """
  Request to attach an existing project to the tenancy unit as a new tenant
  resource.

  ## Attributes

  *   `externalResource` (*type:* `String.t`, *default:* `nil`) - When attaching an external project, this is in the format of
      `projects/{project_number}`.
  *   `reservedResource` (*type:* `String.t`, *default:* `nil`) - When attaching a reserved project already in tenancy units, this is the
      tag of a tenant resource under the tenancy unit for the managed service's
      service producer project. The reserved tenant resource must be in an
      active state.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - Tag of the tenant resource after attachment.
      Must be less than 128 characters. Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :externalResource => String.t(),
          :reservedResource => String.t(),
          :tag => String.t()
        }

  field(:externalResource)
  field(:reservedResource)
  field(:tag)
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.AttachTenantProjectRequest do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.AttachTenantProjectRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceConsumerManagement.V1.Model.AttachTenantProjectRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
