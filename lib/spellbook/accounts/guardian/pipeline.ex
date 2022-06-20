defmodule Spellbook.Accounts.Guardian.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :spellbook,
    error_handler: Spellbook.Accounts.Guardian.ErrorHandler,
    module: Spellbook.Accounts.Services.Guardian

  plug Guardian.Plug.VerifyHeader, claims: %{"typ" => "access"}
  # Load the user if either of the verifications worked
  plug Guardian.Plug.LoadResource, allow_blank: true
end
