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

defmodule GoogleApi.BigQuery.V2.Api.Routines do
  @moduledoc """
  API calls for all endpoints tagged `Routines`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the routine specified by routineId from the dataset.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the routine to delete
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the routine to delete
  *   `routine_id` (*type:* `String.t`) - Routine ID of the routine to delete
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_routines_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def bigquery_routines_delete(
        connection,
        project_id,
        dataset_id,
        routine_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/bigquery/v2/projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
          "routineId" => URI.encode(routine_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets the specified routine resource by routine ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the requested routine
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the requested routine
  *   `routine_id` (*type:* `String.t`) - Routine ID of the requested routine
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:fieldMask` (*type:* `String.t`) - If set, only the Routine fields in the field mask are returned in the
          response. If unset, all Routine fields are returned.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Routine{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_routines_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.BigQuery.V2.Model.Routine.t()} | {:error, Tesla.Env.t()}
  def bigquery_routines_get(
        connection,
        project_id,
        dataset_id,
        routine_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :fieldMask => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/bigquery/v2/projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
          "routineId" => URI.encode(routine_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Routine{}])
  end

  @doc """
  Creates a new routine in the dataset.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the new routine
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the new routine
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.Routine.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Routine{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_routines_insert(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Routine.t()} | {:error, Tesla.Env.t()}
  def bigquery_routines_insert(
        connection,
        project_id,
        dataset_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/bigquery/v2/projects/{+projectId}/datasets/{+datasetId}/routines", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Routine{}])
  end

  @doc """
  Lists all routines in the specified dataset. Requires the READER dataset
  role.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the routines to list
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the routines to list
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of results to return in a single response page.
          Leverage the page tokens to iterate through the entire collection.
      *   `:pageToken` (*type:* `String.t`) - Page token, returned by a previous call, to request the next page of
          results
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.ListRoutinesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_routines_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.ListRoutinesResponse.t()} | {:error, Tesla.Env.t()}
  def bigquery_routines_list(
        connection,
        project_id,
        dataset_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{+projectId}/datasets/{+datasetId}/routines", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.ListRoutinesResponse{}])
  end

  @doc """
  Updates information in an existing routine. The update method replaces the
  entire Routine resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.BigQuery.V2.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Project ID of the routine to update
  *   `dataset_id` (*type:* `String.t`) - Dataset ID of the routine to update
  *   `routine_id` (*type:* `String.t`) - Routine ID of the routine to update
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.BigQuery.V2.Model.Routine.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.BigQuery.V2.Model.Routine{}}` on success
  *   `{:error, info}` on failure
  """
  @spec bigquery_routines_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.BigQuery.V2.Model.Routine.t()} | {:error, Tesla.Env.t()}
  def bigquery_routines_update(
        connection,
        project_id,
        dataset_id,
        routine_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url(
        "/bigquery/v2/projects/{+projectId}/datasets/{+datasetId}/routines/{+routineId}",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
          "routineId" => URI.encode(routine_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Routine{}])
  end
end
