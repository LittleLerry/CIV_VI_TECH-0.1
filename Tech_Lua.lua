-- Tech_Lua
-- Author: polaris_cheung
-- DateCreated: 12/21/2021 11:35:07 PM
--------------------------------------------------------------
function ResearchCompletedGrantsCoal(iPlayerID, iTech)
	local pPlayer = Players[iPlayerID]
	local CoalInfo = GameInfo.Resources["RESOURCE_COAL"]
	local TargetTech = GameInfo.Technologies["TECH_INDUSTRIALIZATION_GRANTS_COAL"]
	if(TargetTech.Index == iTech) then
	pPlayer:GetResources():ChangeResourceAmount(CoalInfo.Index, 35)
	end
end

function ResearchCompletedGrantsNiter(iPlayerID, iTech)
	local pPlayer = Players[iPlayerID]
	local NiterInfo = GameInfo.Resources["RESOURCE_NITER"]
	local TargetTech = GameInfo.Technologies["TECH_MILITARY_ENGINEERING_GRANTS_NITER"]
	if(TargetTech.Index == iTech) then
	pPlayer:GetResources():ChangeResourceAmount(NiterInfo.Index, 25)
	end
end

function ResearchCompletedGrantsOil(iPlayerID, iTech)
	local pPlayer = Players[iPlayerID]
	local OilInfo = GameInfo.Resources["RESOURCE_OIL"]
	local TargetTech = GameInfo.Technologies["TECH_REFINING_GRANTS_OIL"]
	if(TargetTech.Index == iTech) then
	pPlayer:GetResources():ChangeResourceAmount(OilInfo.Index, 35)
	end
end

function ResearchCompletedGrantsAluminum(iPlayerID, iTech)
	local pPlayer = Players[iPlayerID]
	local AluminumInfo = GameInfo.Resources["RESOURCE_ALUMINUM"]
	local TargetTech = GameInfo.Technologies["TECH_RADIO_GRANTS_ALUMINUM"]
	if(TargetTech.Index == iTech) then
	pPlayer:GetResources():ChangeResourceAmount(AluminumInfo.Index, 20)
	end
end

function ResearchCompletedGrantsUranium(iPlayerID, iTech)
	local pPlayer = Players[iPlayerID]
	local UraniumInfo = GameInfo.Resources["RESOURCE_URANIUM"]
	local TargetTech = GameInfo.Technologies["TECH_COMBINED_ARMS_GRANTS_URANIUM"]
	if(TargetTech.Index == iTech) then
	pPlayer:GetResources():ChangeResourceAmount(UraniumInfo.Index, 20)
	end
end

Events.ResearchCompleted.Add(ResearchCompletedGrantsCoal)
Events.ResearchCompleted.Add(ResearchCompletedGrantsNiter)
Events.ResearchCompleted.Add(ResearchCompletedGrantsOil)
Events.ResearchCompleted.Add(ResearchCompletedGrantsAluminum)
Events.ResearchCompleted.Add(ResearchCompletedGrantsUranium)