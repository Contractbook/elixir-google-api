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

defmodule GoogleApi.CloudIdentity.V1.Model.UpdateMembershipRolesParams do
  @moduledoc """
  The details of an update to a `MembershipRole`.

  ## Attributes

  *   `fieldMask` (*type:* `String.t`, *default:* `nil`) - The fully-qualified names of fields to update. May only contain the field `expiry_detail.expire_time`.
  *   `membershipRole` (*type:* `GoogleApi.CloudIdentity.V1.Model.MembershipRole.t`, *default:* `nil`) - The `MembershipRole`s to be updated. Only `MEMBER` `MembershipRole` can currently be updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fieldMask => String.t() | nil,
          :membershipRole => GoogleApi.CloudIdentity.V1.Model.MembershipRole.t() | nil
        }

  field(:fieldMask)
  field(:membershipRole, as: GoogleApi.CloudIdentity.V1.Model.MembershipRole)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.UpdateMembershipRolesParams do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.UpdateMembershipRolesParams.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.UpdateMembershipRolesParams do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
