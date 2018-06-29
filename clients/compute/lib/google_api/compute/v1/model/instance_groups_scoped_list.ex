# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.InstanceGroupsScopedList do
  @moduledoc """


  ## Attributes

  - instanceGroups ([InstanceGroup]): [Output Only] The list of instance groups that are contained in this scope. Defaults to: `null`.
  - warning (InstanceGroupsScopedListWarning):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceGroups => list(GoogleApi.Compute.V1.Model.InstanceGroup.t()),
          :warning => GoogleApi.Compute.V1.Model.InstanceGroupsScopedListWarning.t()
        }

  field(:instanceGroups, as: GoogleApi.Compute.V1.Model.InstanceGroup, type: :list)
  field(:warning, as: GoogleApi.Compute.V1.Model.InstanceGroupsScopedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupsScopedList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupsScopedList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupsScopedList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
