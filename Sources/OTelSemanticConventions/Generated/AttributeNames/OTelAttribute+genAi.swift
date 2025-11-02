//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2025 the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// DO NOT EDIT. This file is generated automatically. See README for details.

extension OTelAttribute {
    #if Experimental
    /// `gen_ai` namespace
    public enum genAi {
        /// `gen_ai.completion` **UNSTABLE**: Deprecated, use Event API to report completions contents.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `[{'role': 'assistant', 'content': 'The capital of France is Paris.'}]`
        @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
        public static let completion = "gen_ai.completion"

        /// `gen_ai.prompt` **UNSTABLE**: Deprecated, use Event API to report prompt contents.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `[{'role': 'user', 'content': 'What is the capital of France?'}]`
        @available(*, deprecated, message: "Obsoleted: Removed, no replacement at this time.")
        public static let prompt = "gen_ai.prompt"

        /// `gen_ai.system` **UNSTABLE**: Deprecated, use `gen_ai.provider.name` instead.
        ///
        /// - Stability: development
        /// - Type: enum
        ///     - `openai`: OpenAI
        ///     - `gcp.gen_ai`: Any Google generative AI endpoint
        ///     - `gcp.vertex_ai`: Vertex AI
        ///     - `gcp.gemini`: Gemini
        ///     - `vertex_ai`: Vertex AI
        ///     - `gemini`: Gemini
        ///     - `anthropic`: Anthropic
        ///     - `cohere`: Cohere
        ///     - `az.ai.inference`: Azure AI Inference
        ///     - `az.ai.openai`: Azure OpenAI
        ///     - `azure.ai.inference`: Azure AI Inference
        ///     - `azure.ai.openai`: Azure OpenAI
        ///     - `ibm.watsonx.ai`: IBM Watsonx AI
        ///     - `aws.bedrock`: AWS Bedrock
        ///     - `perplexity`: Perplexity
        ///     - `xai`: xAI
        ///     - `deepseek`: DeepSeek
        ///     - `groq`: Groq
        ///     - `mistral_ai`: Mistral AI
        @available(*, deprecated, renamed: "OTelAttribute.genAi.provider.name")
        public static let system = "gen_ai.system"

        /// `gen_ai.system_instructions` **UNSTABLE**: The system message or instructions provided to the GenAI model separately from the chat history.
        ///
        /// - Stability: development
        /// - Type: any
        /// - Examples:
        ///     - `[
        ///   {
        ///     "type": "text",
        ///     "content": "You are an Agent that greet users, always use greetings tool to respond"
        ///   }
        /// ]
        /// `
        ///     - `[
        ///   {
        ///     "type": "text",
        ///     "content": "You are a language translator."
        ///   },
        ///   {
        ///     "type": "text",
        ///     "content": "Your mission is to translate text in English to French."
        ///   }
        /// ]
        /// `
        ///
        /// This attribute SHOULD be used when the corresponding provider or API
        /// allows to provide system instructions or messages separately from the
        /// chat history.
        ///
        /// Instructions that are part of the chat history SHOULD be recorded in
        /// `gen_ai.input.messages` attribute instead.
        ///
        /// Instrumentations MUST follow [System instructions JSON schema](/docs/gen-ai/gen-ai-system-instructions.json).
        ///
        /// When recorded on spans, it MAY be recorded as a JSON string if structured
        /// format is not supported and SHOULD be recorded in structured form otherwise.
        ///
        /// Instrumentations MAY provide a way for users to filter or truncate
        /// system instructions.
        ///
        /// > [!Warning]
        /// > This attribute may contain sensitive information.
        ///
        /// See [Recording content on attributes](/docs/gen-ai/gen-ai-spans.md#recording-content-on-attributes)
        /// section for more details.
        public static let systemInstructions = "gen_ai.system_instructions"

        /// `gen_ai.agent` namespace
        public enum agent {
            /// `gen_ai.agent.description` **UNSTABLE**: Free-form description of the GenAI agent provided by the application.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Helps with math problems`
            ///     - `Generates fiction stories`
            public static let description = "gen_ai.agent.description"

            /// `gen_ai.agent.id` **UNSTABLE**: The unique identifier of the GenAI agent.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `asst_5j66UpCpwteGg4YSxUnt7lPY`
            public static let id = "gen_ai.agent.id"

            /// `gen_ai.agent.name` **UNSTABLE**: Human-readable name of the GenAI agent provided by the application.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Math Tutor`
            ///     - `Fiction Writer`
            public static let name = "gen_ai.agent.name"
        }

        /// `gen_ai.conversation` namespace
        public enum conversation {
            /// `gen_ai.conversation.id` **UNSTABLE**: The unique identifier for a conversation (session, thread), used to store and correlate messages within this conversation.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `conv_5j66UpCpwteGg4YSxUnt7lPY`
            public static let id = "gen_ai.conversation.id"
        }

        /// `gen_ai.data_source` namespace
        public enum dataSource {
            /// `gen_ai.data_source.id` **UNSTABLE**: The data source identifier.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `H7STPQYOND`
            ///
            /// Data sources are used by AI agents and RAG applications to store grounding data. A data source may be an external database, object store, document collection, website, or any other storage system used by the GenAI agent or application. The `gen_ai.data_source.id` SHOULD match the identifier used by the GenAI system rather than a name specific to the external storage, such as a database or object store. Semantic conventions referencing `gen_ai.data_source.id` MAY also leverage additional attributes, such as `db.*`, to further identify and describe the data source.
            public static let id = "gen_ai.data_source.id"
        }

        /// `gen_ai.embeddings` namespace
        public enum embeddings {
            /// `gen_ai.embeddings.dimension` namespace
            public enum dimension {
                /// `gen_ai.embeddings.dimension.count` **UNSTABLE**: The number of dimensions the resulting output embeddings should have.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Examples:
                ///     - `512`
                ///     - `1024`
                public static let count = "gen_ai.embeddings.dimension.count"
            }
        }

        /// `gen_ai.evaluation` namespace
        public enum evaluation {
            /// `gen_ai.evaluation.explanation` **UNSTABLE**: A free-form explanation for the assigned score provided by the evaluator.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `The response is factually accurate but lacks sufficient detail to fully address the question.`
            public static let explanation = "gen_ai.evaluation.explanation"

            /// `gen_ai.evaluation.name` **UNSTABLE**: The name of the evaluation metric used for the GenAI response.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Relevance`
            ///     - `IntentResolution`
            public static let name = "gen_ai.evaluation.name"

            /// `gen_ai.evaluation.score` namespace
            public enum score {
                /// `gen_ai.evaluation.score.label` **UNSTABLE**: Human readable label for evaluation.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `relevant`
                ///     - `not_relevant`
                ///     - `correct`
                ///     - `incorrect`
                ///     - `pass`
                ///     - `fail`
                ///
                /// This attribute provides a human-readable interpretation of the evaluation score produced by an evaluator. For example, a score value of 1 could mean "relevant" in one evaluation system and "not relevant" in another, depending on the scoring range and evaluator. The label SHOULD have low cardinality. Possible values depend on the evaluation metric and evaluator used; implementations SHOULD document the possible values.
                public static let label = "gen_ai.evaluation.score.label"

                /// `gen_ai.evaluation.score.value` **UNSTABLE**: The evaluation score returned by the evaluator.
                ///
                /// - Stability: development
                /// - Type: double
                /// - Example: `4.0`
                public static let value = "gen_ai.evaluation.score.value"
            }
        }

        /// `gen_ai.input` namespace
        public enum input {
            /// `gen_ai.input.messages` **UNSTABLE**: The chat history provided to the model as an input.
            ///
            /// - Stability: development
            /// - Type: any
            /// - Example: `[
            ///   {
            ///     "role": "user",
            ///     "parts": [
            ///       {
            ///         "type": "text",
            ///         "content": "Weather in Paris?"
            ///       }
            ///     ]
            ///   },
            ///   {
            ///     "role": "assistant",
            ///     "parts": [
            ///       {
            ///         "type": "tool_call",
            ///         "id": "call_VSPygqKTWdrhaFErNvMV18Yl",
            ///         "name": "get_weather",
            ///         "arguments": {
            ///           "location": "Paris"
            ///         }
            ///       }
            ///     ]
            ///   },
            ///   {
            ///     "role": "tool",
            ///     "parts": [
            ///       {
            ///         "type": "tool_call_response",
            ///         "id": " call_VSPygqKTWdrhaFErNvMV18Yl",
            ///         "result": "rainy, 57°F"
            ///       }
            ///     ]
            ///   }
            /// ]
            /// `
            ///
            /// Instrumentations MUST follow [Input messages JSON schema](/docs/gen-ai/gen-ai-input-messages.json).
            /// When the attribute is recorded on events, it MUST be recorded in structured
            /// form. When recorded on spans, it MAY be recorded as a JSON string if structured
            /// format is not supported and SHOULD be recorded in structured form otherwise.
            ///
            /// Messages MUST be provided in the order they were sent to the model.
            /// Instrumentations MAY provide a way for users to filter or truncate
            /// input messages.
            ///
            /// > [!Warning]
            /// > This attribute is likely to contain sensitive information including user/PII data.
            ///
            /// See [Recording content on attributes](/docs/gen-ai/gen-ai-spans.md#recording-content-on-attributes)
            /// section for more details.
            public static let messages = "gen_ai.input.messages"
        }

        /// `gen_ai.openai` namespace
        public enum openai {
            /// `gen_ai.openai.request` namespace
            public enum request {
                /// `gen_ai.openai.request.response_format` **UNSTABLE**: Deprecated, use `gen_ai.output.type`.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `text`: Text response format
                ///     - `json_object`: JSON object response format
                ///     - `json_schema`: JSON schema response format
                @available(*, deprecated, renamed: "OTelAttribute.genAi.output.type")
                public static let responseFormat = "gen_ai.openai.request.response_format"

                /// `gen_ai.openai.request.seed` **UNSTABLE**: Deprecated, use `gen_ai.request.seed`.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `100`
                @available(*, deprecated, renamed: "OTelAttribute.genAi.request.seed")
                public static let seed = "gen_ai.openai.request.seed"

                /// `gen_ai.openai.request.service_tier` **UNSTABLE**: Deprecated, use `openai.request.service_tier`.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `auto`: The system will utilize scale tier credits until they are exhausted.
                ///     - `default`: The system will utilize the default scale tier.
                @available(*, deprecated, renamed: "OTelAttribute.openai.request.serviceTier")
                public static let serviceTier = "gen_ai.openai.request.service_tier"
            }

            /// `gen_ai.openai.response` namespace
            public enum response {
                /// `gen_ai.openai.response.service_tier` **UNSTABLE**: Deprecated, use `openai.response.service_tier`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `scale`
                ///     - `default`
                @available(*, deprecated, renamed: "OTelAttribute.openai.response.serviceTier")
                public static let serviceTier = "gen_ai.openai.response.service_tier"

                /// `gen_ai.openai.response.system_fingerprint` **UNSTABLE**: Deprecated, use `openai.response.system_fingerprint`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `fp_44709d6fcb`
                @available(*, deprecated, renamed: "OTelAttribute.openai.response.systemFingerprint")
                public static let systemFingerprint = "gen_ai.openai.response.system_fingerprint"
            }
        }

        /// `gen_ai.operation` namespace
        public enum operation {
            /// `gen_ai.operation.name` **UNSTABLE**: The name of the operation being performed.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `chat`: Chat completion operation such as [OpenAI Chat API](https://platform.openai.com/docs/api-reference/chat)
            ///     - `generate_content`: Multimodal content generation operation such as [Gemini Generate Content](https://ai.google.dev/api/generate-content)
            ///     - `text_completion`: Text completions operation such as [OpenAI Completions API (Legacy)](https://platform.openai.com/docs/api-reference/completions)
            ///     - `embeddings`: Embeddings operation such as [OpenAI Create embeddings API](https://platform.openai.com/docs/api-reference/embeddings/create)
            ///     - `create_agent`: Create GenAI agent
            ///     - `invoke_agent`: Invoke GenAI agent
            ///     - `execute_tool`: Execute a tool
            ///
            /// If one of the predefined values applies, but specific system uses a different name it's RECOMMENDED to document it in the semantic conventions for specific GenAI system and use system-specific name in the instrumentation. If a different name is not documented, instrumentation libraries SHOULD use applicable predefined value.
            public static let name = "gen_ai.operation.name"
        }

        /// `gen_ai.output` namespace
        public enum output {
            /// `gen_ai.output.messages` **UNSTABLE**: Messages returned by the model where each message represents a specific model response (choice, candidate).
            ///
            /// - Stability: development
            /// - Type: any
            /// - Example: `[
            ///   {
            ///     "role": "assistant",
            ///     "parts": [
            ///       {
            ///         "type": "text",
            ///         "content": "The weather in Paris is currently rainy with a temperature of 57°F."
            ///       }
            ///     ],
            ///     "finish_reason": "stop"
            ///   }
            /// ]
            /// `
            ///
            /// Instrumentations MUST follow [Output messages JSON schema](/docs/gen-ai/gen-ai-output-messages.json)
            ///
            /// Each message represents a single output choice/candidate generated by
            /// the model. Each message corresponds to exactly one generation
            /// (choice/candidate) and vice versa - one choice cannot be split across
            /// multiple messages or one message cannot contain parts from multiple choices.
            ///
            /// When the attribute is recorded on events, it MUST be recorded in structured
            /// form. When recorded on spans, it MAY be recorded as a JSON string if structured
            /// format is not supported and SHOULD be recorded in structured form otherwise.
            ///
            /// Instrumentations MAY provide a way for users to filter or truncate
            /// output messages.
            ///
            /// > [!Warning]
            /// > This attribute is likely to contain sensitive information including user/PII data.
            ///
            /// See [Recording content on attributes](/docs/gen-ai/gen-ai-spans.md#recording-content-on-attributes)
            /// section for more details.
            public static let messages = "gen_ai.output.messages"

            /// `gen_ai.output.type` **UNSTABLE**: Represents the content type requested by the client.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `text`: Plain text
            ///     - `json`: JSON object with known or unknown schema
            ///     - `image`: Image
            ///     - `speech`: Speech
            ///
            /// This attribute SHOULD be used when the client requests output of a specific type. The model may return zero or more outputs of this type.
            /// This attribute specifies the output modality and not the actual output format. For example, if an image is requested, the actual output could be a URL pointing to an image file.
            /// Additional output format details may be recorded in the future in the `gen_ai.output.{type}.*` attributes.
            public static let `type` = "gen_ai.output.type"
        }

        /// `gen_ai.provider` namespace
        public enum provider {
            /// `gen_ai.provider.name` **UNSTABLE**: The Generative AI provider as identified by the client or server instrumentation.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `openai`: [OpenAI](https://openai.com/)
            ///     - `gcp.gen_ai`: Any Google generative AI endpoint
            ///     - `gcp.vertex_ai`: [Vertex AI](https://cloud.google.com/vertex-ai)
            ///     - `gcp.gemini`: [Gemini](https://cloud.google.com/products/gemini)
            ///     - `anthropic`: [Anthropic](https://www.anthropic.com/)
            ///     - `cohere`: [Cohere](https://cohere.com/)
            ///     - `azure.ai.inference`: Azure AI Inference
            ///     - `azure.ai.openai`: [Azure OpenAI](https://azure.microsoft.com/products/ai-services/openai-service/)
            ///     - `ibm.watsonx.ai`: [IBM Watsonx AI](https://www.ibm.com/products/watsonx-ai)
            ///     - `aws.bedrock`: [AWS Bedrock](https://aws.amazon.com/bedrock)
            ///     - `perplexity`: [Perplexity](https://www.perplexity.ai/)
            ///     - `x_ai`: [xAI](https://x.ai/)
            ///     - `deepseek`: [DeepSeek](https://www.deepseek.com/)
            ///     - `groq`: [Groq](https://groq.com/)
            ///     - `mistral_ai`: [Mistral AI](https://mistral.ai/)
            ///
            /// The attribute SHOULD be set based on the instrumentation's best
            /// knowledge and may differ from the actual model provider.
            ///
            /// Multiple providers, including Azure OpenAI, Gemini, and AI hosting platforms
            /// are accessible using the OpenAI REST API and corresponding client libraries,
            /// but may proxy or host models from different providers.
            ///
            /// The `gen_ai.request.model`, `gen_ai.response.model`, and `server.address`
            /// attributes may help identify the actual system in use.
            ///
            /// The `gen_ai.provider.name` attribute acts as a discriminator that
            /// identifies the GenAI telemetry format flavor specific to that provider
            /// within GenAI semantic conventions.
            /// It SHOULD be set consistently with provider-specific attributes and signals.
            /// For example, GenAI spans, metrics, and events related to AWS Bedrock
            /// should have the `gen_ai.provider.name` set to `aws.bedrock` and include
            /// applicable `aws.bedrock.*` attributes and are not expected to include
            /// `openai.*` attributes.
            public static let name = "gen_ai.provider.name"
        }

        /// `gen_ai.request` namespace
        public enum request {
            /// `gen_ai.request.encoding_formats` **UNSTABLE**: The encoding formats requested in an embeddings operation, if specified.
            ///
            /// - Stability: development
            /// - Type: stringArray
            ///
            /// In some GenAI systems the encoding formats are called embedding types. Also, some GenAI systems only accept a single format per request.
            public static let encodingFormats = "gen_ai.request.encoding_formats"

            /// `gen_ai.request.frequency_penalty` **UNSTABLE**: The frequency penalty setting for the GenAI request.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `0.1`
            public static let frequencyPenalty = "gen_ai.request.frequency_penalty"

            /// `gen_ai.request.max_tokens` **UNSTABLE**: The maximum number of tokens the model generates for a request.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `100`
            public static let maxTokens = "gen_ai.request.max_tokens"

            /// `gen_ai.request.model` **UNSTABLE**: The name of the GenAI model a request is being made to.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `gpt-4`
            public static let model = "gen_ai.request.model"

            /// `gen_ai.request.presence_penalty` **UNSTABLE**: The presence penalty setting for the GenAI request.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `0.1`
            public static let presencePenalty = "gen_ai.request.presence_penalty"

            /// `gen_ai.request.seed` **UNSTABLE**: Requests with same seed value more likely to return same result.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `100`
            public static let seed = "gen_ai.request.seed"

            /// `gen_ai.request.stop_sequences` **UNSTABLE**: List of sequences that the model will use to stop generating further tokens.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let stopSequences = "gen_ai.request.stop_sequences"

            /// `gen_ai.request.temperature` **UNSTABLE**: The temperature setting for the GenAI request.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `0.0`
            public static let temperature = "gen_ai.request.temperature"

            /// `gen_ai.request.top_k` **UNSTABLE**: The top_k sampling setting for the GenAI request.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `1.0`
            public static let topK = "gen_ai.request.top_k"

            /// `gen_ai.request.top_p` **UNSTABLE**: The top_p sampling setting for the GenAI request.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Example: `1.0`
            public static let topP = "gen_ai.request.top_p"

            /// `gen_ai.request.choice` namespace
            public enum choice {
                /// `gen_ai.request.choice.count` **UNSTABLE**: The target number of candidate completions to return.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `3`
                public static let count = "gen_ai.request.choice.count"
            }
        }

        /// `gen_ai.response` namespace
        public enum response {
            /// `gen_ai.response.finish_reasons` **UNSTABLE**: Array of reasons the model stopped generating tokens, corresponding to each generation received.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let finishReasons = "gen_ai.response.finish_reasons"

            /// `gen_ai.response.id` **UNSTABLE**: The unique identifier for the completion.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `chatcmpl-123`
            public static let id = "gen_ai.response.id"

            /// `gen_ai.response.model` **UNSTABLE**: The name of the model that generated the response.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `gpt-4-0613`
            public static let model = "gen_ai.response.model"
        }

        /// `gen_ai.token` namespace
        public enum token {
            /// `gen_ai.token.type` **UNSTABLE**: The type of token being counted.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `input`: Input tokens (prompt, input, etc.)
            ///     - `output`: Output tokens (completion, response, etc.)
            ///     - `output`: Output tokens (completion, response, etc.)
            /// - Examples:
            ///     - `input`
            ///     - `output`
            public static let `type` = "gen_ai.token.type"
        }

        /// `gen_ai.tool` namespace
        public enum tool {
            /// `gen_ai.tool.definitions` **UNSTABLE**: The list of source system tool definitions available to the GenAI agent or model.
            ///
            /// - Stability: development
            /// - Type: any
            /// - Example: `[
            ///   {
            ///     "type": "function",
            ///     "name": "get_current_weather",
            ///     "description": "Get the current weather in a given location",
            ///     "parameters": {
            ///       "type": "object",
            ///       "properties": {
            ///         "location": {
            ///           "type": "string",
            ///           "description": "The city and state, e.g. San Francisco, CA"
            ///         },
            ///         "unit": {
            ///           "type": "string",
            ///           "enum": [
            ///             "celsius",
            ///             "fahrenheit"
            ///           ]
            ///         }
            ///       },
            ///       "required": [
            ///         "location",
            ///         "unit"
            ///       ]
            ///     }
            ///   }
            /// ]
            /// `
            ///
            /// The value of this attribute matches source system tool definition format.
            ///
            /// It's expected to be an array of objects where each object represents a tool definition. In case a serialized string is available
            /// to the instrumentation, the instrumentation SHOULD do the best effort to
            /// deserialize it to an array. When recorded on spans, it MAY be recorded as a JSON string if structured format is not supported and SHOULD be recorded in structured form otherwise.
            ///
            /// Since this attribute could be large, it's NOT RECOMMENDED to populate
            /// it by default. Instrumentations MAY provide a way to enable
            /// populating this attribute.
            public static let definitions = "gen_ai.tool.definitions"

            /// `gen_ai.tool.description` **UNSTABLE**: The tool description.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Multiply two numbers`
            public static let description = "gen_ai.tool.description"

            /// `gen_ai.tool.name` **UNSTABLE**: Name of the tool utilized by the agent.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Flights`
            public static let name = "gen_ai.tool.name"

            /// `gen_ai.tool.type` **UNSTABLE**: Type of the tool utilized by the agent
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `function`
            ///     - `extension`
            ///     - `datastore`
            ///
            /// Extension: A tool executed on the agent-side to directly call external APIs, bridging the gap between the agent and real-world systems.
            ///   Agent-side operations involve actions that are performed by the agent on the server or within the agent's controlled environment.
            /// Function: A tool executed on the client-side, where the agent generates parameters for a predefined function, and the client executes the logic.
            ///   Client-side operations are actions taken on the user's end or within the client application.
            /// Datastore: A tool used by the agent to access and query structured or unstructured external data for retrieval-augmented tasks or knowledge updates.
            public static let `type` = "gen_ai.tool.type"

            /// `gen_ai.tool.call` namespace
            public enum call {
                /// `gen_ai.tool.call.arguments` **UNSTABLE**: Parameters passed to the tool call.
                ///
                /// - Stability: development
                /// - Type: any
                /// - Example: `{
                ///     "location": "San Francisco?",
                ///     "date": "2025-10-01"
                /// }
                /// `
                ///
                /// > [!WARNING]
                /// > This attribute may contain sensitive information.
                ///
                /// It's expected to be an object - in case a serialized string is available
                /// to the instrumentation, the instrumentation SHOULD do the best effort to
                /// deserialize it to an object. When recorded on spans, it MAY be recorded as a JSON string if structured format is not supported and SHOULD be recorded in structured form otherwise.
                public static let arguments = "gen_ai.tool.call.arguments"

                /// `gen_ai.tool.call.id` **UNSTABLE**: The tool call identifier.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `call_mszuSIzqtI65i1wAUOE8w5H4`
                public static let id = "gen_ai.tool.call.id"

                /// `gen_ai.tool.call.result` **UNSTABLE**: The result returned by the tool call (if any and if execution was successful).
                ///
                /// - Stability: development
                /// - Type: any
                /// - Example: `{
                ///   "temperature_range": {
                ///     "high": 75,
                ///     "low": 60
                ///   },
                ///   "conditions": "sunny"
                /// }
                /// `
                ///
                /// > [!WARNING]
                /// > This attribute may contain sensitive information.
                ///
                /// It's expected to be an object - in case a serialized string is available
                /// to the instrumentation, the instrumentation SHOULD do the best effort to
                /// deserialize it to an object. When recorded on spans, it MAY be recorded as a JSON string if structured format is not supported and SHOULD be recorded in structured form otherwise.
                public static let result = "gen_ai.tool.call.result"
            }
        }

        /// `gen_ai.usage` namespace
        public enum usage {
            /// `gen_ai.usage.completion_tokens` **UNSTABLE**: Deprecated, use `gen_ai.usage.output_tokens` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `42`
            @available(*, deprecated, renamed: "OTelAttribute.genAi.usage.outputTokens")
            public static let completionTokens = "gen_ai.usage.completion_tokens"

            /// `gen_ai.usage.input_tokens` **UNSTABLE**: The number of tokens used in the GenAI input (prompt).
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `100`
            public static let inputTokens = "gen_ai.usage.input_tokens"

            /// `gen_ai.usage.output_tokens` **UNSTABLE**: The number of tokens used in the GenAI response (completion).
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `180`
            public static let outputTokens = "gen_ai.usage.output_tokens"

            /// `gen_ai.usage.prompt_tokens` **UNSTABLE**: Deprecated, use `gen_ai.usage.input_tokens` instead.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `42`
            @available(*, deprecated, renamed: "OTelAttribute.genAi.usage.inputTokens")
            public static let promptTokens = "gen_ai.usage.prompt_tokens"
        }
    }
    #endif
}
