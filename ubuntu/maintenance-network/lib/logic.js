/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

'use strict';
/**
 * Write your transction processor functions here
 */

/**
 * Sample transaction
 * @param {org.maintenance.network.assetReport} assetReport
 * @transaction
 */
async function assetReport(tx) {

    var changed = false;
    var pos = 0

    if (tx.assetDiagn.toolCondition != tx.newToolCondition) {
        tx.assetDiagn.toolCondition = tx.newToolCondition;
        changed = true;
        tx.newToolCondition == 0 ? pos = pos + 1 : pos = pos - 1
    }
    if (tx.assetDiagn.misalignment != tx.newMisalignment) {
        tx.assetDiagn.misalignment = tx.newMisalignment;
        changed = true;
        tx.newMisalignment == 0 ? pos = pos + 1 : pos = pos - 1

    }
    if (tx.assetDiagn.unbalance != tx.newUnbalance) {
        tx.assetDiagn.unbalance = tx.newUnbalance;
        changed = true;
        tx.newUnbalance == 0 ? pos = pos + 1 : pos = pos - 1
    }

    if (changed) {
        const assetRegistry = await getAssetRegistry('org.maintenance.network.MachineDiagn');
        await assetRegistry.update(tx.assetDiagn);
        tx.assetProgn.toolWear = tx.assetProgn.toolWear + pos * 0.1;
    }

    const assetRegistryPr = await getAssetRegistry('org.maintenance.network.MachineProgn');
    await assetRegistryPr.update(tx.assetProgn);


    // Emit an event for the modified asset.
    // let event = getFactory().newEvent('org.maintenance.network', 'SampleEvent');
    // event.asset = tx.asset;
    // event.oldValue = oldValue;
    // event.newValue = tx.newValue;
    // emit(event);
}
