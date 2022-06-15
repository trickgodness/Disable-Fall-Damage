--# Disable Fall Damage

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
            if IsPedFalling(PlayerPedId()) then
                SetEntityInvincible(PlayerPedId(), true)
                SetPlayerInvincible(PlayerId(), true)
                SetPedCanRagdoll(PlayerPedId(), false)
                ClearPedBloodDamage(PlayerPedId())
                ResetPedVisibleDamage(PlayerPedId())
                ClearPedLastWeaponDamage(PlayerPedId())
                SetEntityProofs(PlayerPedId(), true, true, true, true, true, true, true, true)
                SetEntityOnlyDamagedByPlayer(PlayerPedId(), false)
                SetEntityCanBeDamaged(PlayerPedId(), false)
            else
                SetEntityInvincible(PlayerPedId(), false)
                SetPlayerInvincible(PlayerId(), false)
                SetPedCanRagdoll(PlayerPedId(), true)
                ClearPedLastWeaponDamage(PlayerPedId())
                SetEntityProofs(PlayerPedId(), false, false, false, false, false, false, false, false)
                SetEntityOnlyDamagedByPlayer(PlayerPedId(), false)
                SetEntityCanBeDamaged(PlayerPedId(), true)
            end 
	end
end)