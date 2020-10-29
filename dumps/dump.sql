--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_organizationId_64318c7f_fk_Organizations_id";
ALTER TABLE IF EXISTS ONLY public."TrainingInstructionsLabelDatasets" DROP CONSTRAINT IF EXISTS "TrainingInstructions_labelDatasetId_516be3ef_fk_LabelData";
ALTER TABLE IF EXISTS ONLY public."TrainingInstructions" DROP CONSTRAINT IF EXISTS "TrainingInstructions_dataSplitInst_f2f86e68_fk_DataSplit";
ALTER TABLE IF EXISTS ONLY public."TrainingInstructionsLabelDatasets" DROP CONSTRAINT IF EXISTS "TrainingInstructions_TrainingInstId_74880888_fk_TrainingI";
ALTER TABLE IF EXISTS ONLY public."RoadConditions" DROP CONSTRAINT IF EXISTS "RoadConditions_edgeNodeId_3b89422e_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_vehicleClassification_0a8e9bc9_fk_TypeCode_value";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_taggedDataId_1832c8e8_fk_FrameDatasets_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_roadWeatherCondition_9b12a596_fk_TypeCode_value";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_projectId_64f4a338_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_objectModelId_53c82144_fk_ObjectModels_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_objectClass_38c0bc9d_fk_TypeCode_value";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_licensePlate_dee89b0e_fk_FileStorage_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_featureModelId_8f88e76e_fk_FeatureModels_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_face_259dc2a1_fk_FileStorage_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_eventType_490c94b2_fk_TypeCode_value";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_edgeNodeId_c69a3c7b_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_deviceInstanceId_a2862ba9_fk_DeviceInstances_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_cadFileTag_5170c280_fk_FileStorage_id";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_ambientWeatherCondition_da43dbc2_fk_TypeCode_value";
ALTER TABLE IF EXISTS ONLY public."RecurrentCharges" DROP CONSTRAINT IF EXISTS "RecurrentCharges_organizationId_ea145764_fk_Organizations_id";
ALTER TABLE IF EXISTS ONLY public."QuestionXMLs" DROP CONSTRAINT IF EXISTS "QuestionXMLs_labelClassId_368ad4d1_fk_LabelClasses_id";
ALTER TABLE IF EXISTS ONLY public."Purchases" DROP CONSTRAINT IF EXISTS "Purchases_organizationId_60152fc6_fk_Organizations_id";
ALTER TABLE IF EXISTS ONLY public."Projects" DROP CONSTRAINT IF EXISTS "Projects_organizationId_e13b3813_fk_Organizations_id";
ALTER TABLE IF EXISTS ONLY public."Projects" DROP CONSTRAINT IF EXISTS "Projects_featuremodelId_4acb5542_fk_FeatureModels_id";
ALTER TABLE IF EXISTS ONLY public."Projects" DROP CONSTRAINT IF EXISTS "Projects_ecosystemId_c89985e3_fk_Ecosystems_id";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_validationInstrId_52c3aa32_fk_Validatio";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_trainingInstrId_9c044f11_fk_TrainingI";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_projectId_5f3a8bc3_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_dataAcqInstId_966befae_fk_DataAcqIn";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_augmentInstId_76598f7f_fk_Augmentat";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_annotInstId_dd119dea_fk_Annotatio";
ALTER TABLE IF EXISTS ONLY public."ProjectEdgeNodes" DROP CONSTRAINT IF EXISTS "ProjectEdgeNodes_projectId_691a4a2b_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."ProjectEdgeNodes" DROP CONSTRAINT IF EXISTS "ProjectEdgeNodes_edgeNodeId_190a005d_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."OutsourcedInst" DROP CONSTRAINT IF EXISTS "OutsourcedInst_questionXMLid_bf4b9751_fk_QuestionXMLs_id";
ALTER TABLE IF EXISTS ONLY public."OutsourcedInst" DROP CONSTRAINT IF EXISTS "OutsourcedInst_frameDatasetId_a60fd59f_fk_FrameDatasets_id";
ALTER TABLE IF EXISTS ONLY public."OutsourcedInst" DROP CONSTRAINT IF EXISTS "OutsourcedInst_annotInstId_3258119d_fk_Annotatio";
ALTER TABLE IF EXISTS ONLY public."OperationInstances" DROP CONSTRAINT IF EXISTS "OperationInstances_operationClassId_3b778f3d_fk_Operation";
ALTER TABLE IF EXISTS ONLY public."OperationInstances" DROP CONSTRAINT IF EXISTS "OperationInstances_frameDatasetId_bf00fa80_fk_FrameDatasets_id";
ALTER TABLE IF EXISTS ONLY public."OperationClassesSupportedLabelClasses" DROP CONSTRAINT IF EXISTS "OperationClassesSupp_operationClassId_1eaf8b2e_fk_Operation";
ALTER TABLE IF EXISTS ONLY public."OperationClassesSupportedLabelClasses" DROP CONSTRAINT IF EXISTS "OperationClassesSupp_labelClassId_d9abb51c_fk_LabelClas";
ALTER TABLE IF EXISTS ONLY public."ObjectModelProject" DROP CONSTRAINT IF EXISTS "ObjectModelProject_projectId_ba150b15_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."ObjectModelProject" DROP CONSTRAINT IF EXISTS "ObjectModelProject_objectModelId_e6270770_fk_ObjectModels_id";
ALTER TABLE IF EXISTS ONLY public."ObjectModelFeatureModel" DROP CONSTRAINT IF EXISTS "ObjectModelFeatureMo_objectModelId_30e0c1ab_fk_ObjectMod";
ALTER TABLE IF EXISTS ONLY public."ObjectModelFeatureModel" DROP CONSTRAINT IF EXISTS "ObjectModelFeatureMo_featureModelId_17a47e4e_fk_FeatureMo";
ALTER TABLE IF EXISTS ONLY public."ObjectModelAlgorithmModel" DROP CONSTRAINT IF EXISTS "ObjectModelAlgorithm_objectModelId_6d60d413_fk_ObjectMod";
ALTER TABLE IF EXISTS ONLY public."ObjectModelAlgorithmModel" DROP CONSTRAINT IF EXISTS "ObjectModelAlgorithm_algorithmModelId_aa48e51b_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."Licenses" DROP CONSTRAINT IF EXISTS "Licenses_userId_c973a0e8_fk_Users_id";
ALTER TABLE IF EXISTS ONLY public."LabelDatasets" DROP CONSTRAINT IF EXISTS "LabelDatasets_parentFrameDatasetId_4a8dd315_fk_FrameDatasets_id";
ALTER TABLE IF EXISTS ONLY public."LabelDatasets" DROP CONSTRAINT IF EXISTS "LabelDatasets_parentAlgorithmModel_9f060aca_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."LabelDatasets" DROP CONSTRAINT IF EXISTS "LabelDatasets_labelClassId_d1722ec5_fk_LabelClasses_id";
ALTER TABLE IF EXISTS ONLY public."LabelData" DROP CONSTRAINT IF EXISTS "LabelData_parentFrame_b5ac8646_fk_Frames_id";
ALTER TABLE IF EXISTS ONLY public."LabelData" DROP CONSTRAINT IF EXISTS "LabelData_labelDatasetId_fc9ceb35_fk_LabelDatasets_id";
ALTER TABLE IF EXISTS ONLY public."HITsets" DROP CONSTRAINT IF EXISTS "HITsets_questionXMLid_21251f13_fk_QuestionXMLs_id";
ALTER TABLE IF EXISTS ONLY public."HITsets" DROP CONSTRAINT IF EXISTS "HITsets_frameDatasetId_30f9eec9_fk_FrameDatasets_id";
ALTER TABLE IF EXISTS ONLY public."HITsets" DROP CONSTRAINT IF EXISTS "HITsets_assocLabelsetId_e11ceaa0_fk_LabelDatasets_id";
ALTER TABLE IF EXISTS ONLY public."Frames" DROP CONSTRAINT IF EXISTS "Frames_frameDatasetId_8b22b6d3_fk_FrameDatasets_id";
ALTER TABLE IF EXISTS ONLY public."FrameDatasets" DROP CONSTRAINT IF EXISTS "FrameDatasets_DataAcqInstructionsI_4a926a5f_fk_DataAcqIn";
ALTER TABLE IF EXISTS ONLY public."FrameDatasetsProjects" DROP CONSTRAINT IF EXISTS "FrameDatasetsProjects_projectId_78fc58d8_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."FrameDatasetsProjects" DROP CONSTRAINT IF EXISTS "FrameDatasetsProject_frameDatasetId_e8269981_fk_FrameData";
ALTER TABLE IF EXISTS ONLY public."FeatureModelAlgorithm" DROP CONSTRAINT IF EXISTS "FeatureModelAlgorith_featureModelId_f1b2874e_fk_FeatureMo";
ALTER TABLE IF EXISTS ONLY public."FeatureModelAlgorithm" DROP CONSTRAINT IF EXISTS "FeatureModelAlgorith_algorithmModelId_0b536e71_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."FeatureInstances" DROP CONSTRAINT IF EXISTS "FeatureInstances_projectId_c180e7f4_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."FeatureInstances" DROP CONSTRAINT IF EXISTS "FeatureInstances_parentECUclass_dde0fcdf_fk_DeviceClasses_id";
ALTER TABLE IF EXISTS ONLY public."FeatureInstances" DROP CONSTRAINT IF EXISTS "FeatureInstances_featureModelId_2acc714d_fk_FeatureModels_id";
ALTER TABLE IF EXISTS ONLY public."FeatureInstanceAlgorithm" DROP CONSTRAINT IF EXISTS "FeatureInstanceAlgor_featureInstanceId_54668682_fk_FeatureIn";
ALTER TABLE IF EXISTS ONLY public."FeatureInstanceAlgorithm" DROP CONSTRAINT IF EXISTS "FeatureInstanceAlgor_algorithmId_461edd16_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."EventsHistory" DROP CONSTRAINT IF EXISTS "EventsHistory_edgeNodeId_5490a224_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."EdgeNodes" DROP CONSTRAINT IF EXISTS "EdgeNodes_organizationId_9ee23a70_fk_Organizations_id";
ALTER TABLE IF EXISTS ONLY public."EdgeNodes" DROP CONSTRAINT IF EXISTS "EdgeNodes_dockerInstanceId_b0d7c0a7_fk_DockerInstances_id";
ALTER TABLE IF EXISTS ONLY public."EdgeNodeDevices" DROP CONSTRAINT IF EXISTS "EdgeNodeDevices_edgeNodeId_f5c57da1_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."EdgeNodeDevices" DROP CONSTRAINT IF EXISTS "EdgeNodeDevices_deviceInstanceId_d6c01c28_fk_DeviceInstances_id";
ALTER TABLE IF EXISTS ONLY public."Ecosystems" DROP CONSTRAINT IF EXISTS "Ecosystems_organizationId_28330099_fk_Organizations_id";
ALTER TABLE IF EXISTS ONLY public."EcosystemsEdgeNodes" DROP CONSTRAINT IF EXISTS "EcosystemsEdgeNodes_edgeNodeId_7f9d3833_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."EcosystemsEdgeNodes" DROP CONSTRAINT IF EXISTS "EcosystemsEdgeNodes_ecosystemId_ad643413_fk_Ecosystems_id";
ALTER TABLE IF EXISTS ONLY public."DockerModelFeatureModel" DROP CONSTRAINT IF EXISTS "DockerModelFeatureMo_featureModelId_88cb3c4c_fk_FeatureMo";
ALTER TABLE IF EXISTS ONLY public."DockerModelFeatureModel" DROP CONSTRAINT IF EXISTS "DockerModelFeatureMo_dockerModelId_c9abbb63_fk_DockerMod";
ALTER TABLE IF EXISTS ONLY public."DockerModelDeviceClasses" DROP CONSTRAINT IF EXISTS "DockerModelDeviceCla_dockerModelId_1fc8f861_fk_DockerMod";
ALTER TABLE IF EXISTS ONLY public."DockerModelDeviceClasses" DROP CONSTRAINT IF EXISTS "DockerModelDeviceCla_deviceClassId_7f5e0439_fk_DeviceCla";
ALTER TABLE IF EXISTS ONLY public."DockerInstances" DROP CONSTRAINT IF EXISTS "DockerInstances_dockerModelId_c0e5906d_fk_DockerModels_id";
ALTER TABLE IF EXISTS ONLY public."Devices" DROP CONSTRAINT IF EXISTS "Devices_manufacturerId_190a216d_fk_Manufacturers_id";
ALTER TABLE IF EXISTS ONLY public."Devices" DROP CONSTRAINT IF EXISTS "Devices_categoryId_9734dab2_fk_Categories_id";
ALTER TABLE IF EXISTS ONLY public."DevicePurchases" DROP CONSTRAINT IF EXISTS "DevicePurchases_orderId_018cdbfa_fk_Purchases_id";
ALTER TABLE IF EXISTS ONLY public."DevicePurchases" DROP CONSTRAINT IF EXISTS "DevicePurchases_deviceId_3a5d8103_fk_Devices_id";
ALTER TABLE IF EXISTS ONLY public."DeviceInstances" DROP CONSTRAINT IF EXISTS "DeviceInstances_deviceClassId_4175d8f1_fk_DeviceClasses_id";
ALTER TABLE IF EXISTS ONLY public."DeviceImages" DROP CONSTRAINT IF EXISTS "DeviceImages_device_id_ee33261e_fk_Devices_id";
ALTER TABLE IF EXISTS ONLY public."DeviceClasses" DROP CONSTRAINT IF EXISTS "DeviceClasses_deviceParameterId_a25c5229_fk_DeviceParameters_id";
ALTER TABLE IF EXISTS ONLY public."DetectionsSummary" DROP CONSTRAINT IF EXISTS "DetectionsSummary_edgeNodeId_1bef6f49_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."DetectedObjects" DROP CONSTRAINT IF EXISTS "DetectedObjects_fileId_6ee54399_fk_FileStorage_id";
ALTER TABLE IF EXISTS ONLY public."DetectedObjects" DROP CONSTRAINT IF EXISTS "DetectedObjects_edgeNodeId_8d45f531_fk_EdgeNodes_id";
ALTER TABLE IF EXISTS ONLY public."AugmentationInstructions" DROP CONSTRAINT IF EXISTS "AugmentationInstructions_projectId_422bc6a4_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."AugmentationInstructions" DROP CONSTRAINT IF EXISTS "AugmentationInstruct_frameDatasetId_06c5cfe8_fk_FrameData";
ALTER TABLE IF EXISTS ONLY public."AlgorithmModels" DROP CONSTRAINT IF EXISTS "AlgorithmModels_initWeights_97fc8647_fk_Weights_id";
ALTER TABLE IF EXISTS ONLY public."AlgorithmModels" DROP CONSTRAINT IF EXISTS "AlgorithmModels_architectureId_3b8b2a10_fk_Architectures_id";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstances" DROP CONSTRAINT IF EXISTS "AlgorithmInstances_weightId_479a600a_fk_Weights_id";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstances" DROP CONSTRAINT IF EXISTS "AlgorithmInstances_projectId_a1901360_fk_Projects_id";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstances" DROP CONSTRAINT IF EXISTS "AlgorithmInstances_algorithmModelId_812a2349_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceTrainingInst" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceTra_trainingInstructionI_9ee173b8_fk_TrainingI";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceTrainingInst" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceTra_algorithmInstanceId_c74bf0d6_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceObjectModel" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceObj_objectModelId_a413348a_fk_ObjectMod";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceObjectModel" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceObj_algorithmInstanceId_08b65b52_fk_Algorithm";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceDeployedDevices" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceDep_deployedDeviceInstan_c6c562c1_fk_DeviceIns";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceDeployedDevices" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceDep_algorithmInstanceId_37ca6367_fk_Algorithm";
DROP INDEX IF EXISTS public.recon_db_manager_deviceimage_device_id_55ebffb5;
DROP INDEX IF EXISTS public."Users_username_c7f288a1_like";
DROP INDEX IF EXISTS public."Users_organizationId_64318c7f";
DROP INDEX IF EXISTS public."Users_email_93eda431_like";
DROP INDEX IF EXISTS public."TypeCode_value_83ec098e_like";
DROP INDEX IF EXISTS public."TrainingInstructions_dataSplitInst_f2f86e68";
DROP INDEX IF EXISTS public."TrainingInstructionsLabelDatasets_labelDatasetId_516be3ef";
DROP INDEX IF EXISTS public."TrainingInstructionsLabelDatasets_TrainingInstId_74880888";
DROP INDEX IF EXISTS public."RoadConditions_edgeNodeId_3b89422e";
DROP INDEX IF EXISTS public."RelevantData_vehicleClassification_0a8e9bc9_like";
DROP INDEX IF EXISTS public."RelevantData_vehicleClassification_0a8e9bc9";
DROP INDEX IF EXISTS public."RelevantData_taggedDataId_1832c8e8";
DROP INDEX IF EXISTS public."RelevantData_roadWeatherCondition_9b12a596_like";
DROP INDEX IF EXISTS public."RelevantData_roadWeatherCondition_9b12a596";
DROP INDEX IF EXISTS public."RelevantData_projectId_64f4a338";
DROP INDEX IF EXISTS public."RelevantData_objectModelId_53c82144";
DROP INDEX IF EXISTS public."RelevantData_objectClass_38c0bc9d_like";
DROP INDEX IF EXISTS public."RelevantData_objectClass_38c0bc9d";
DROP INDEX IF EXISTS public."RelevantData_licensePlate_dee89b0e";
DROP INDEX IF EXISTS public."RelevantData_featureModelId_8f88e76e";
DROP INDEX IF EXISTS public."RelevantData_face_259dc2a1";
DROP INDEX IF EXISTS public."RelevantData_eventType_490c94b2_like";
DROP INDEX IF EXISTS public."RelevantData_eventType_490c94b2";
DROP INDEX IF EXISTS public."RelevantData_edgeNodeId_c69a3c7b";
DROP INDEX IF EXISTS public."RelevantData_deviceInstanceId_a2862ba9";
DROP INDEX IF EXISTS public."RelevantData_cadFileTag_5170c280";
DROP INDEX IF EXISTS public."RelevantData_ambientWeatherCondition_da43dbc2_like";
DROP INDEX IF EXISTS public."RelevantData_ambientWeatherCondition_da43dbc2";
DROP INDEX IF EXISTS public."RecurrentCharges_organizationId_ea145764";
DROP INDEX IF EXISTS public."QuestionXMLs_labelClassId_368ad4d1";
DROP INDEX IF EXISTS public."Purchases_organizationId_60152fc6";
DROP INDEX IF EXISTS public."Projects_organizationId_e13b3813";
DROP INDEX IF EXISTS public."Projects_featuremodelId_4acb5542";
DROP INDEX IF EXISTS public."Projects_ecosystemId_c89985e3";
DROP INDEX IF EXISTS public."ProjectInstructions_validationInstrId_52c3aa32";
DROP INDEX IF EXISTS public."ProjectInstructions_trainingInstrId_9c044f11";
DROP INDEX IF EXISTS public."ProjectInstructions_projectId_5f3a8bc3";
DROP INDEX IF EXISTS public."ProjectInstructions_dataAcqInstId_966befae";
DROP INDEX IF EXISTS public."ProjectInstructions_augmentInstId_76598f7f";
DROP INDEX IF EXISTS public."ProjectInstructions_annotInstId_dd119dea";
DROP INDEX IF EXISTS public."ProjectEdgeNodes_projectId_691a4a2b";
DROP INDEX IF EXISTS public."ProjectEdgeNodes_edgeNodeId_190a005d";
DROP INDEX IF EXISTS public."OutsourcedInst_questionXMLid_bf4b9751";
DROP INDEX IF EXISTS public."OutsourcedInst_frameDatasetId_a60fd59f";
DROP INDEX IF EXISTS public."OutsourcedInst_annotInstId_3258119d";
DROP INDEX IF EXISTS public."OperationInstances_operationClassId_3b778f3d";
DROP INDEX IF EXISTS public."OperationInstances_frameDatasetId_bf00fa80";
DROP INDEX IF EXISTS public."OperationClassesSupportedLabelClasses_operationClassId_1eaf8b2e";
DROP INDEX IF EXISTS public."OperationClassesSupportedLabelClasses_labelClassId_d9abb51c";
DROP INDEX IF EXISTS public."ObjectModelProject_projectId_ba150b15";
DROP INDEX IF EXISTS public."ObjectModelProject_objectModelId_e6270770";
DROP INDEX IF EXISTS public."ObjectModelFeatureModel_objectModelId_30e0c1ab";
DROP INDEX IF EXISTS public."ObjectModelFeatureModel_featureModelId_17a47e4e";
DROP INDEX IF EXISTS public."ObjectModelAlgorithmModel_objectModelId_6d60d413";
DROP INDEX IF EXISTS public."ObjectModelAlgorithmModel_algorithmModelId_aa48e51b";
DROP INDEX IF EXISTS public."Licenses_userId_c973a0e8";
DROP INDEX IF EXISTS public."LabelDatasets_parentFrameDatasetId_4a8dd315";
DROP INDEX IF EXISTS public."LabelDatasets_parentAlgorithmModelId_9f060aca";
DROP INDEX IF EXISTS public."LabelDatasets_labelClassId_d1722ec5";
DROP INDEX IF EXISTS public."LabelData_parentFrame_b5ac8646";
DROP INDEX IF EXISTS public."LabelData_labelDatasetId_fc9ceb35";
DROP INDEX IF EXISTS public."HITsets_questionXMLid_21251f13";
DROP INDEX IF EXISTS public."HITsets_frameDatasetId_30f9eec9";
DROP INDEX IF EXISTS public."HITsets_assocLabelsetId_e11ceaa0";
DROP INDEX IF EXISTS public."Frames_frameDatasetId_8b22b6d3";
DROP INDEX IF EXISTS public."FrameDatasets_DataAcqInstructionsId_4a926a5f";
DROP INDEX IF EXISTS public."FrameDatasetsProjects_projectId_78fc58d8";
DROP INDEX IF EXISTS public."FrameDatasetsProjects_frameDatasetId_e8269981";
DROP INDEX IF EXISTS public."FeatureModelAlgorithm_featureModelId_f1b2874e";
DROP INDEX IF EXISTS public."FeatureModelAlgorithm_algorithmModelId_0b536e71";
DROP INDEX IF EXISTS public."FeatureInstances_projectId_c180e7f4";
DROP INDEX IF EXISTS public."FeatureInstances_parentECUclass_dde0fcdf";
DROP INDEX IF EXISTS public."FeatureInstances_featureModelId_2acc714d";
DROP INDEX IF EXISTS public."FeatureInstanceAlgorithm_featureInstanceId_54668682";
DROP INDEX IF EXISTS public."FeatureInstanceAlgorithm_algorithmId_461edd16";
DROP INDEX IF EXISTS public."EventsHistory_edgeNodeId_5490a224";
DROP INDEX IF EXISTS public."EdgeNodes_organizationId_9ee23a70";
DROP INDEX IF EXISTS public."EdgeNodes_dockerInstanceId_b0d7c0a7";
DROP INDEX IF EXISTS public."EdgeNodeDevices_edgeNodeId_f5c57da1";
DROP INDEX IF EXISTS public."EdgeNodeDevices_deviceInstanceId_d6c01c28";
DROP INDEX IF EXISTS public."Ecosystems_organizationId_28330099";
DROP INDEX IF EXISTS public."EcosystemsEdgeNodes_edgeNodeId_7f9d3833";
DROP INDEX IF EXISTS public."EcosystemsEdgeNodes_ecosystemId_ad643413";
DROP INDEX IF EXISTS public."DockerModelFeatureModel_featureModelId_88cb3c4c";
DROP INDEX IF EXISTS public."DockerModelFeatureModel_dockerModelId_c9abbb63";
DROP INDEX IF EXISTS public."DockerModelDeviceClasses_dockerModelId_1fc8f861";
DROP INDEX IF EXISTS public."DockerModelDeviceClasses_deviceClassId_7f5e0439";
DROP INDEX IF EXISTS public."DockerInstances_dockerModelId_c0e5906d";
DROP INDEX IF EXISTS public."Devices_manufacturerId_190a216d";
DROP INDEX IF EXISTS public."Devices_categoryId_9734dab2";
DROP INDEX IF EXISTS public."DevicePurchases_orderId_018cdbfa";
DROP INDEX IF EXISTS public."DevicePurchases_deviceId_3a5d8103";
DROP INDEX IF EXISTS public."DeviceInstances_deviceClassId_4175d8f1";
DROP INDEX IF EXISTS public."DeviceClasses_deviceParameterId_a25c5229";
DROP INDEX IF EXISTS public."DetectionsSummary_edgeNodeId_1bef6f49";
DROP INDEX IF EXISTS public."DetectedObjects_fileId_6ee54399";
DROP INDEX IF EXISTS public."DetectedObjects_edgeNodeId_8d45f531";
DROP INDEX IF EXISTS public."AugmentationInstructions_projectId_422bc6a4";
DROP INDEX IF EXISTS public."AugmentationInstructions_frameDatasetId_06c5cfe8";
DROP INDEX IF EXISTS public."AlgorithmModels_initWeights_97fc8647";
DROP INDEX IF EXISTS public."AlgorithmModels_architectureId_3b8b2a10";
DROP INDEX IF EXISTS public."AlgorithmInstances_weightId_479a600a";
DROP INDEX IF EXISTS public."AlgorithmInstances_projectId_a1901360";
DROP INDEX IF EXISTS public."AlgorithmInstances_algorithmModelId_812a2349";
DROP INDEX IF EXISTS public."AlgorithmInstanceTrainingInst_trainingInstructionId_9ee173b8";
DROP INDEX IF EXISTS public."AlgorithmInstanceTrainingInst_algorithmInstanceId_c74bf0d6";
DROP INDEX IF EXISTS public."AlgorithmInstanceObjectModel_objectModelId_a413348a";
DROP INDEX IF EXISTS public."AlgorithmInstanceObjectModel_algorithmInstanceId_08b65b52";
DROP INDEX IF EXISTS public."AlgorithmInstanceDeployedDevices_algorithmInstanceId_37ca6367";
DROP INDEX IF EXISTS public."AlgorithmInstanceDeployedD_deployedDeviceInstanceId_c6c562c1";
ALTER TABLE IF EXISTS ONLY public."DeviceImages" DROP CONSTRAINT IF EXISTS recon_db_manager_deviceimage_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public."Workers" DROP CONSTRAINT IF EXISTS "Workers_pkey";
ALTER TABLE IF EXISTS ONLY public."Weights" DROP CONSTRAINT IF EXISTS "Weights_pkey";
ALTER TABLE IF EXISTS ONLY public."ValidationInstructions" DROP CONSTRAINT IF EXISTS "ValidationInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_username_key";
ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_pkey";
ALTER TABLE IF EXISTS ONLY public."Users" DROP CONSTRAINT IF EXISTS "Users_email_93eda431_uniq";
ALTER TABLE IF EXISTS ONLY public."TypeCode" DROP CONSTRAINT IF EXISTS "TypeCode_value_83ec098e_uniq";
ALTER TABLE IF EXISTS ONLY public."TypeCode" DROP CONSTRAINT IF EXISTS "TypeCode_pkey";
ALTER TABLE IF EXISTS ONLY public."TrainingInstructions" DROP CONSTRAINT IF EXISTS "TrainingInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."TrainingInstructionsLabelDatasets" DROP CONSTRAINT IF EXISTS "TrainingInstructionsLabelDatasets_pkey";
ALTER TABLE IF EXISTS ONLY public."RoadConditions" DROP CONSTRAINT IF EXISTS "RoadConditions_pkey";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_uuid_fe14b732_uniq";
ALTER TABLE IF EXISTS ONLY public."RelevantData" DROP CONSTRAINT IF EXISTS "RelevantData_pkey";
ALTER TABLE IF EXISTS ONLY public."RecurrentCharges" DROP CONSTRAINT IF EXISTS "RecurrentCharges_pkey";
ALTER TABLE IF EXISTS ONLY public."QuestionXMLs" DROP CONSTRAINT IF EXISTS "QuestionXMLs_pkey";
ALTER TABLE IF EXISTS ONLY public."QualityMetricStruct" DROP CONSTRAINT IF EXISTS "QualityMetricStruct_pkey";
ALTER TABLE IF EXISTS ONLY public."Purchases" DROP CONSTRAINT IF EXISTS "Purchases_pkey";
ALTER TABLE IF EXISTS ONLY public."Projects" DROP CONSTRAINT IF EXISTS "Projects_pkey";
ALTER TABLE IF EXISTS ONLY public."ProjectInstructions" DROP CONSTRAINT IF EXISTS "ProjectInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."ProjectEdgeNodes" DROP CONSTRAINT IF EXISTS "ProjectEdgeNodes_pkey";
ALTER TABLE IF EXISTS ONLY public."OutsourcedInst" DROP CONSTRAINT IF EXISTS "OutsourcedInst_pkey";
ALTER TABLE IF EXISTS ONLY public."Organizations" DROP CONSTRAINT IF EXISTS "Organizations_pkey";
ALTER TABLE IF EXISTS ONLY public."OperationInstances" DROP CONSTRAINT IF EXISTS "OperationInstances_pkey";
ALTER TABLE IF EXISTS ONLY public."OperationClasses" DROP CONSTRAINT IF EXISTS "OperationClasses_pkey";
ALTER TABLE IF EXISTS ONLY public."OperationClassesSupportedLabelClasses" DROP CONSTRAINT IF EXISTS "OperationClassesSupportedLabelClasses_pkey";
ALTER TABLE IF EXISTS ONLY public."ObjectModels" DROP CONSTRAINT IF EXISTS "ObjectModels_pkey";
ALTER TABLE IF EXISTS ONLY public."ObjectModelProject" DROP CONSTRAINT IF EXISTS "ObjectModelProject_pkey";
ALTER TABLE IF EXISTS ONLY public."ObjectModelFeatureModel" DROP CONSTRAINT IF EXISTS "ObjectModelFeatureModel_pkey";
ALTER TABLE IF EXISTS ONLY public."ObjectModelAlgorithmModel" DROP CONSTRAINT IF EXISTS "ObjectModelAlgorithmModel_pkey";
ALTER TABLE IF EXISTS ONLY public."Manufacturers" DROP CONSTRAINT IF EXISTS "Manufacturers_pkey";
ALTER TABLE IF EXISTS ONLY public."Licenses" DROP CONSTRAINT IF EXISTS "Licenses_pkey";
ALTER TABLE IF EXISTS ONLY public."LabelDatasets" DROP CONSTRAINT IF EXISTS "LabelDatasets_pkey";
ALTER TABLE IF EXISTS ONLY public."LabelData" DROP CONSTRAINT IF EXISTS "LabelData_pkey";
ALTER TABLE IF EXISTS ONLY public."LabelClasses" DROP CONSTRAINT IF EXISTS "LabelClasses_pkey";
ALTER TABLE IF EXISTS ONLY public."HITsets" DROP CONSTRAINT IF EXISTS "HITsets_pkey";
ALTER TABLE IF EXISTS ONLY public."Frames" DROP CONSTRAINT IF EXISTS "Frames_pkey";
ALTER TABLE IF EXISTS ONLY public."FrameDatasets" DROP CONSTRAINT IF EXISTS "FrameDatasets_pkey";
ALTER TABLE IF EXISTS ONLY public."FrameDatasetsProjects" DROP CONSTRAINT IF EXISTS "FrameDatasetsProjects_pkey";
ALTER TABLE IF EXISTS ONLY public."FileStorage" DROP CONSTRAINT IF EXISTS "FileStorage_pkey";
ALTER TABLE IF EXISTS ONLY public."FeatureModels" DROP CONSTRAINT IF EXISTS "FeatureModels_pkey";
ALTER TABLE IF EXISTS ONLY public."FeatureModelAlgorithm" DROP CONSTRAINT IF EXISTS "FeatureModelAlgorithm_pkey";
ALTER TABLE IF EXISTS ONLY public."FeatureInstances" DROP CONSTRAINT IF EXISTS "FeatureInstances_pkey";
ALTER TABLE IF EXISTS ONLY public."FeatureInstanceAlgorithm" DROP CONSTRAINT IF EXISTS "FeatureInstanceAlgorithm_pkey";
ALTER TABLE IF EXISTS ONLY public."EventsHistory" DROP CONSTRAINT IF EXISTS "EventsHistory_pkey";
ALTER TABLE IF EXISTS ONLY public."EdgeNodes" DROP CONSTRAINT IF EXISTS "EdgeNodes_pkey";
ALTER TABLE IF EXISTS ONLY public."EdgeNodeDevices" DROP CONSTRAINT IF EXISTS "EdgeNodeDevices_pkey";
ALTER TABLE IF EXISTS ONLY public."Ecosystems" DROP CONSTRAINT IF EXISTS "Ecosystems_pkey";
ALTER TABLE IF EXISTS ONLY public."EcosystemsEdgeNodes" DROP CONSTRAINT IF EXISTS "EcosystemsEdgeNodes_pkey";
ALTER TABLE IF EXISTS ONLY public."DockerModels" DROP CONSTRAINT IF EXISTS "DockerModels_pkey";
ALTER TABLE IF EXISTS ONLY public."DockerModelFeatureModel" DROP CONSTRAINT IF EXISTS "DockerModelFeatureModel_pkey";
ALTER TABLE IF EXISTS ONLY public."DockerModelDeviceClasses" DROP CONSTRAINT IF EXISTS "DockerModelDeviceClasses_pkey";
ALTER TABLE IF EXISTS ONLY public."DockerInstances" DROP CONSTRAINT IF EXISTS "DockerInstances_pkey";
ALTER TABLE IF EXISTS ONLY public."Devices" DROP CONSTRAINT IF EXISTS "Devices_pkey";
ALTER TABLE IF EXISTS ONLY public."DevicePurchases" DROP CONSTRAINT IF EXISTS "DevicePurchases_pkey";
ALTER TABLE IF EXISTS ONLY public."DeviceParameters" DROP CONSTRAINT IF EXISTS "DeviceParameters_pkey";
ALTER TABLE IF EXISTS ONLY public."DeviceInstances" DROP CONSTRAINT IF EXISTS "DeviceInstances_pkey";
ALTER TABLE IF EXISTS ONLY public."DeviceClasses" DROP CONSTRAINT IF EXISTS "DeviceClasses_pkey";
ALTER TABLE IF EXISTS ONLY public."DetectionsSummary" DROP CONSTRAINT IF EXISTS "DetectionsSummary_pkey";
ALTER TABLE IF EXISTS ONLY public."DetectedObjects" DROP CONSTRAINT IF EXISTS "DetectedObjects_pkey";
ALTER TABLE IF EXISTS ONLY public."DataSplitInstructions" DROP CONSTRAINT IF EXISTS "DataSplitInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."DataAcqInstructions" DROP CONSTRAINT IF EXISTS "DataAcqInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."Categories" DROP CONSTRAINT IF EXISTS "Categories_pkey";
ALTER TABLE IF EXISTS ONLY public."AugmentationInstructions" DROP CONSTRAINT IF EXISTS "AugmentationInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."Architectures" DROP CONSTRAINT IF EXISTS "Architectures_pkey";
ALTER TABLE IF EXISTS ONLY public."AnnotationInstructions" DROP CONSTRAINT IF EXISTS "AnnotationInstructions_pkey";
ALTER TABLE IF EXISTS ONLY public."AlgorithmModels" DROP CONSTRAINT IF EXISTS "AlgorithmModels_pkey";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstances" DROP CONSTRAINT IF EXISTS "AlgorithmInstances_pkey";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceTrainingInst" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceTrainingInst_pkey";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceObjectModel" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceObjectModel_pkey";
ALTER TABLE IF EXISTS ONLY public."AlgorithmInstanceDeployedDevices" DROP CONSTRAINT IF EXISTS "AlgorithmInstanceDeployedDevices_pkey";
ALTER TABLE IF EXISTS public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Workers" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Weights" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ValidationInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Users" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TypeCode" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TrainingInstructionsLabelDatasets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."TrainingInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."RoadConditions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."RelevantData" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."RecurrentCharges" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."QuestionXMLs" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."QualityMetricStruct" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Purchases" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Projects" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProjectInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ProjectEdgeNodes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OutsourcedInst" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Organizations" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OperationInstances" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OperationClassesSupportedLabelClasses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."OperationClasses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ObjectModels" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ObjectModelProject" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ObjectModelFeatureModel" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."ObjectModelAlgorithmModel" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Manufacturers" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Licenses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LabelDatasets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LabelData" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."LabelClasses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."HITsets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Frames" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FrameDatasetsProjects" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FrameDatasets" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FileStorage" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FeatureModels" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FeatureModelAlgorithm" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FeatureInstances" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."FeatureInstanceAlgorithm" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."EventsHistory" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."EdgeNodes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."EdgeNodeDevices" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."EcosystemsEdgeNodes" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Ecosystems" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DockerModels" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DockerModelFeatureModel" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DockerModelDeviceClasses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DockerInstances" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Devices" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DevicePurchases" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DeviceParameters" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DeviceInstances" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DeviceImages" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DeviceClasses" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DetectionsSummary" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DetectedObjects" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DataSplitInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."DataAcqInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Categories" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AugmentationInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Architectures" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AnnotationInstructions" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AlgorithmModels" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AlgorithmInstances" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AlgorithmInstanceTrainingInst" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AlgorithmInstanceObjectModel" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."AlgorithmInstanceDeployedDevices" ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS public.recon_db_manager_deviceimage_id_seq;
DROP SEQUENCE IF EXISTS public.django_migrations_id_seq;
DROP TABLE IF EXISTS public.django_migrations;
DROP SEQUENCE IF EXISTS public."Workers_id_seq";
DROP TABLE IF EXISTS public."Workers";
DROP SEQUENCE IF EXISTS public."Weights_id_seq";
DROP TABLE IF EXISTS public."Weights";
DROP SEQUENCE IF EXISTS public."ValidationInstructions_id_seq";
DROP TABLE IF EXISTS public."ValidationInstructions";
DROP SEQUENCE IF EXISTS public."Users_id_seq";
DROP TABLE IF EXISTS public."Users";
DROP SEQUENCE IF EXISTS public."TypeCode_id_seq";
DROP TABLE IF EXISTS public."TypeCode";
DROP SEQUENCE IF EXISTS public."TrainingInstructions_id_seq";
DROP SEQUENCE IF EXISTS public."TrainingInstructionsLabelDatasets_id_seq";
DROP TABLE IF EXISTS public."TrainingInstructionsLabelDatasets";
DROP TABLE IF EXISTS public."TrainingInstructions";
DROP SEQUENCE IF EXISTS public."RoadConditions_id_seq";
DROP TABLE IF EXISTS public."RoadConditions";
DROP SEQUENCE IF EXISTS public."RelevantData_id_seq";
DROP TABLE IF EXISTS public."RelevantData";
DROP SEQUENCE IF EXISTS public."RecurrentCharges_id_seq";
DROP TABLE IF EXISTS public."RecurrentCharges";
DROP SEQUENCE IF EXISTS public."QuestionXMLs_id_seq";
DROP TABLE IF EXISTS public."QuestionXMLs";
DROP SEQUENCE IF EXISTS public."QualityMetricStruct_id_seq";
DROP TABLE IF EXISTS public."QualityMetricStruct";
DROP SEQUENCE IF EXISTS public."Purchases_id_seq";
DROP TABLE IF EXISTS public."Purchases";
DROP SEQUENCE IF EXISTS public."Projects_id_seq";
DROP TABLE IF EXISTS public."Projects";
DROP SEQUENCE IF EXISTS public."ProjectInstructions_id_seq";
DROP TABLE IF EXISTS public."ProjectInstructions";
DROP SEQUENCE IF EXISTS public."ProjectEdgeNodes_id_seq";
DROP TABLE IF EXISTS public."ProjectEdgeNodes";
DROP SEQUENCE IF EXISTS public."OutsourcedInst_id_seq";
DROP TABLE IF EXISTS public."OutsourcedInst";
DROP SEQUENCE IF EXISTS public."Organizations_id_seq";
DROP TABLE IF EXISTS public."Organizations";
DROP SEQUENCE IF EXISTS public."OperationInstances_id_seq";
DROP TABLE IF EXISTS public."OperationInstances";
DROP SEQUENCE IF EXISTS public."OperationClasses_id_seq";
DROP SEQUENCE IF EXISTS public."OperationClassesSupportedLabelClasses_id_seq";
DROP TABLE IF EXISTS public."OperationClassesSupportedLabelClasses";
DROP TABLE IF EXISTS public."OperationClasses";
DROP SEQUENCE IF EXISTS public."ObjectModels_id_seq";
DROP TABLE IF EXISTS public."ObjectModels";
DROP SEQUENCE IF EXISTS public."ObjectModelProject_id_seq";
DROP TABLE IF EXISTS public."ObjectModelProject";
DROP SEQUENCE IF EXISTS public."ObjectModelFeatureModel_id_seq";
DROP TABLE IF EXISTS public."ObjectModelFeatureModel";
DROP SEQUENCE IF EXISTS public."ObjectModelAlgorithmModel_id_seq";
DROP TABLE IF EXISTS public."ObjectModelAlgorithmModel";
DROP SEQUENCE IF EXISTS public."Manufacturers_id_seq";
DROP TABLE IF EXISTS public."Manufacturers";
DROP SEQUENCE IF EXISTS public."Licenses_id_seq";
DROP TABLE IF EXISTS public."Licenses";
DROP SEQUENCE IF EXISTS public."LabelDatasets_id_seq";
DROP TABLE IF EXISTS public."LabelDatasets";
DROP SEQUENCE IF EXISTS public."LabelData_id_seq";
DROP TABLE IF EXISTS public."LabelData";
DROP SEQUENCE IF EXISTS public."LabelClasses_id_seq";
DROP TABLE IF EXISTS public."LabelClasses";
DROP SEQUENCE IF EXISTS public."HITsets_id_seq";
DROP TABLE IF EXISTS public."HITsets";
DROP SEQUENCE IF EXISTS public."Frames_id_seq";
DROP TABLE IF EXISTS public."Frames";
DROP SEQUENCE IF EXISTS public."FrameDatasets_id_seq";
DROP SEQUENCE IF EXISTS public."FrameDatasetsProjects_id_seq";
DROP TABLE IF EXISTS public."FrameDatasetsProjects";
DROP TABLE IF EXISTS public."FrameDatasets";
DROP SEQUENCE IF EXISTS public."FileStorage_id_seq";
DROP TABLE IF EXISTS public."FileStorage";
DROP SEQUENCE IF EXISTS public."FeatureModels_id_seq";
DROP TABLE IF EXISTS public."FeatureModels";
DROP SEQUENCE IF EXISTS public."FeatureModelAlgorithm_id_seq";
DROP TABLE IF EXISTS public."FeatureModelAlgorithm";
DROP SEQUENCE IF EXISTS public."FeatureInstances_id_seq";
DROP TABLE IF EXISTS public."FeatureInstances";
DROP SEQUENCE IF EXISTS public."FeatureInstanceAlgorithm_id_seq";
DROP TABLE IF EXISTS public."FeatureInstanceAlgorithm";
DROP SEQUENCE IF EXISTS public."EventsHistory_id_seq";
DROP TABLE IF EXISTS public."EventsHistory";
DROP SEQUENCE IF EXISTS public."EdgeNodes_id_seq";
DROP TABLE IF EXISTS public."EdgeNodes";
DROP SEQUENCE IF EXISTS public."EdgeNodeDevices_id_seq";
DROP TABLE IF EXISTS public."EdgeNodeDevices";
DROP SEQUENCE IF EXISTS public."Ecosystems_id_seq";
DROP SEQUENCE IF EXISTS public."EcosystemsEdgeNodes_id_seq";
DROP TABLE IF EXISTS public."EcosystemsEdgeNodes";
DROP TABLE IF EXISTS public."Ecosystems";
DROP SEQUENCE IF EXISTS public."DockerModels_id_seq";
DROP TABLE IF EXISTS public."DockerModels";
DROP SEQUENCE IF EXISTS public."DockerModelFeatureModel_id_seq";
DROP TABLE IF EXISTS public."DockerModelFeatureModel";
DROP SEQUENCE IF EXISTS public."DockerModelDeviceClasses_id_seq";
DROP TABLE IF EXISTS public."DockerModelDeviceClasses";
DROP SEQUENCE IF EXISTS public."DockerInstances_id_seq";
DROP TABLE IF EXISTS public."DockerInstances";
DROP SEQUENCE IF EXISTS public."Devices_id_seq";
DROP TABLE IF EXISTS public."Devices";
DROP SEQUENCE IF EXISTS public."DevicePurchases_id_seq";
DROP TABLE IF EXISTS public."DevicePurchases";
DROP SEQUENCE IF EXISTS public."DeviceParameters_id_seq";
DROP TABLE IF EXISTS public."DeviceParameters";
DROP SEQUENCE IF EXISTS public."DeviceInstances_id_seq";
DROP TABLE IF EXISTS public."DeviceInstances";
DROP TABLE IF EXISTS public."DeviceImages";
DROP SEQUENCE IF EXISTS public."DeviceClasses_id_seq";
DROP TABLE IF EXISTS public."DeviceClasses";
DROP SEQUENCE IF EXISTS public."DetectionsSummary_id_seq";
DROP TABLE IF EXISTS public."DetectionsSummary";
DROP SEQUENCE IF EXISTS public."DetectedObjects_id_seq";
DROP TABLE IF EXISTS public."DetectedObjects";
DROP SEQUENCE IF EXISTS public."DataSplitInstructions_id_seq";
DROP TABLE IF EXISTS public."DataSplitInstructions";
DROP SEQUENCE IF EXISTS public."DataAcqInstructions_id_seq";
DROP TABLE IF EXISTS public."DataAcqInstructions";
DROP SEQUENCE IF EXISTS public."Categories_id_seq";
DROP TABLE IF EXISTS public."Categories";
DROP SEQUENCE IF EXISTS public."AugmentationInstructions_id_seq";
DROP TABLE IF EXISTS public."AugmentationInstructions";
DROP SEQUENCE IF EXISTS public."Architectures_id_seq";
DROP TABLE IF EXISTS public."Architectures";
DROP SEQUENCE IF EXISTS public."AnnotationInstructions_id_seq";
DROP TABLE IF EXISTS public."AnnotationInstructions";
DROP SEQUENCE IF EXISTS public."AlgorithmModels_id_seq";
DROP TABLE IF EXISTS public."AlgorithmModels";
DROP SEQUENCE IF EXISTS public."AlgorithmInstances_id_seq";
DROP TABLE IF EXISTS public."AlgorithmInstances";
DROP SEQUENCE IF EXISTS public."AlgorithmInstanceTrainingInst_id_seq";
DROP TABLE IF EXISTS public."AlgorithmInstanceTrainingInst";
DROP SEQUENCE IF EXISTS public."AlgorithmInstanceObjectModel_id_seq";
DROP TABLE IF EXISTS public."AlgorithmInstanceObjectModel";
DROP SEQUENCE IF EXISTS public."AlgorithmInstanceDeployedDevices_id_seq";
DROP TABLE IF EXISTS public."AlgorithmInstanceDeployedDevices";
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: AlgorithmInstanceDeployedDevices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AlgorithmInstanceDeployedDevices" (
    id integer NOT NULL,
    "algorithmInstanceId" bigint NOT NULL,
    "deployedDeviceInstanceId" bigint NOT NULL
);


ALTER TABLE public."AlgorithmInstanceDeployedDevices" OWNER TO postgres;

--
-- Name: AlgorithmInstanceDeployedDevices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AlgorithmInstanceDeployedDevices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AlgorithmInstanceDeployedDevices_id_seq" OWNER TO postgres;

--
-- Name: AlgorithmInstanceDeployedDevices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AlgorithmInstanceDeployedDevices_id_seq" OWNED BY public."AlgorithmInstanceDeployedDevices".id;


--
-- Name: AlgorithmInstanceObjectModel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AlgorithmInstanceObjectModel" (
    id integer NOT NULL,
    "algorithmInstanceId" bigint NOT NULL,
    "objectModelId" bigint NOT NULL
);


ALTER TABLE public."AlgorithmInstanceObjectModel" OWNER TO postgres;

--
-- Name: AlgorithmInstanceObjectModel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AlgorithmInstanceObjectModel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AlgorithmInstanceObjectModel_id_seq" OWNER TO postgres;

--
-- Name: AlgorithmInstanceObjectModel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AlgorithmInstanceObjectModel_id_seq" OWNED BY public."AlgorithmInstanceObjectModel".id;


--
-- Name: AlgorithmInstanceTrainingInst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AlgorithmInstanceTrainingInst" (
    id integer NOT NULL,
    "algorithmInstanceId" bigint NOT NULL,
    "trainingInstructionId" bigint NOT NULL
);


ALTER TABLE public."AlgorithmInstanceTrainingInst" OWNER TO postgres;

--
-- Name: AlgorithmInstanceTrainingInst_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AlgorithmInstanceTrainingInst_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AlgorithmInstanceTrainingInst_id_seq" OWNER TO postgres;

--
-- Name: AlgorithmInstanceTrainingInst_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AlgorithmInstanceTrainingInst_id_seq" OWNED BY public."AlgorithmInstanceTrainingInst".id;


--
-- Name: AlgorithmInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AlgorithmInstances" (
    id bigint NOT NULL,
    version integer,
    status character varying(3),
    "currentValidationJSON" jsonb,
    "progressPercentage" integer,
    "validationHistoryJSON" jsonb,
    "creationDate" timestamp with time zone,
    "trainingLog" character varying(255),
    "algorithmModelId" bigint NOT NULL,
    "projectId" bigint NOT NULL,
    "weightId" bigint NOT NULL
);


ALTER TABLE public."AlgorithmInstances" OWNER TO postgres;

--
-- Name: AlgorithmInstances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AlgorithmInstances_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AlgorithmInstances_id_seq" OWNER TO postgres;

--
-- Name: AlgorithmInstances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AlgorithmInstances_id_seq" OWNED BY public."AlgorithmInstances".id;


--
-- Name: AlgorithmModels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AlgorithmModels" (
    id bigint NOT NULL,
    name character varying(255),
    description text,
    preprocessor character varying(255),
    postprocessor character varying(255),
    payload text,
    "HyperparameterStructureJSON" jsonb,
    "ValidationStructureJSON" jsonb,
    class character varying(3),
    "isTrainable" boolean,
    version integer,
    "architectureId" bigint NOT NULL,
    "initWeights" bigint
);


ALTER TABLE public."AlgorithmModels" OWNER TO postgres;

--
-- Name: AlgorithmModels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AlgorithmModels_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AlgorithmModels_id_seq" OWNER TO postgres;

--
-- Name: AlgorithmModels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AlgorithmModels_id_seq" OWNED BY public."AlgorithmModels".id;


--
-- Name: AnnotationInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AnnotationInstructions" (
    id bigint NOT NULL,
    "outsourcedMetaJSON" jsonb,
    "SDGtwo" boolean,
    "SDGtwoInstJSON" jsonb
);


ALTER TABLE public."AnnotationInstructions" OWNER TO postgres;

--
-- Name: AnnotationInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AnnotationInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AnnotationInstructions_id_seq" OWNER TO postgres;

--
-- Name: AnnotationInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AnnotationInstructions_id_seq" OWNED BY public."AnnotationInstructions".id;


--
-- Name: Architectures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Architectures" (
    id bigint NOT NULL,
    description text,
    payload text,
    version integer
);


ALTER TABLE public."Architectures" OWNER TO postgres;

--
-- Name: Architectures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Architectures_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Architectures_id_seq" OWNER TO postgres;

--
-- Name: Architectures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Architectures_id_seq" OWNED BY public."Architectures".id;


--
-- Name: AugmentationInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AugmentationInstructions" (
    id bigint NOT NULL,
    "augOperationsJSON" jsonb,
    "frameDatasetId" bigint NOT NULL,
    "projectId" bigint NOT NULL
);


ALTER TABLE public."AugmentationInstructions" OWNER TO postgres;

--
-- Name: AugmentationInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."AugmentationInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AugmentationInstructions_id_seq" OWNER TO postgres;

--
-- Name: AugmentationInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."AugmentationInstructions_id_seq" OWNED BY public."AugmentationInstructions".id;


--
-- Name: Categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Categories" (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public."Categories" OWNER TO postgres;

--
-- Name: Categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Categories_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Categories_id_seq" OWNER TO postgres;

--
-- Name: Categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Categories_id_seq" OWNED BY public."Categories".id;


--
-- Name: DataAcqInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataAcqInstructions" (
    id bigint NOT NULL,
    "videoDownload" boolean,
    "videoDownloadParamsJSON" jsonb,
    "realDataParamsJSON" jsonb,
    "SDGone" boolean,
    "SDGoneParamsJSON" jsonb
);


ALTER TABLE public."DataAcqInstructions" OWNER TO postgres;

--
-- Name: DataAcqInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataAcqInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataAcqInstructions_id_seq" OWNER TO postgres;

--
-- Name: DataAcqInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataAcqInstructions_id_seq" OWNED BY public."DataAcqInstructions".id;


--
-- Name: DataSplitInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DataSplitInstructions" (
    id bigint NOT NULL,
    "metadataJSON" jsonb
);


ALTER TABLE public."DataSplitInstructions" OWNER TO postgres;

--
-- Name: DataSplitInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DataSplitInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DataSplitInstructions_id_seq" OWNER TO postgres;

--
-- Name: DataSplitInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DataSplitInstructions_id_seq" OWNED BY public."DataSplitInstructions".id;


--
-- Name: DetectedObjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DetectedObjects" (
    id bigint NOT NULL,
    "objectType" character varying(3),
    created_dt timestamp with time zone,
    "parametersJSON" jsonb,
    "edgeNodeId" bigint NOT NULL,
    "fileId" bigint
);


ALTER TABLE public."DetectedObjects" OWNER TO postgres;

--
-- Name: DetectedObjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DetectedObjects_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DetectedObjects_id_seq" OWNER TO postgres;

--
-- Name: DetectedObjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DetectedObjects_id_seq" OWNED BY public."DetectedObjects".id;


--
-- Name: DetectionsSummary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DetectionsSummary" (
    id bigint NOT NULL,
    "observationDate" date,
    "parametersJSON" jsonb,
    "edgeNodeId" bigint NOT NULL
);


ALTER TABLE public."DetectionsSummary" OWNER TO postgres;

--
-- Name: DetectionsSummary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DetectionsSummary_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DetectionsSummary_id_seq" OWNER TO postgres;

--
-- Name: DetectionsSummary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DetectionsSummary_id_seq" OWNED BY public."DetectionsSummary".id;


--
-- Name: DeviceClasses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeviceClasses" (
    id bigint NOT NULL,
    "dockerBase" character varying(255),
    "deviceParameterId" bigint NOT NULL
);


ALTER TABLE public."DeviceClasses" OWNER TO postgres;

--
-- Name: DeviceClasses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DeviceClasses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DeviceClasses_id_seq" OWNER TO postgres;

--
-- Name: DeviceClasses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DeviceClasses_id_seq" OWNED BY public."DeviceClasses".id;


--
-- Name: DeviceImages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeviceImages" (
    id bigint NOT NULL,
    path character varying(100) NOT NULL,
    device_id bigint NOT NULL
);


ALTER TABLE public."DeviceImages" OWNER TO postgres;

--
-- Name: DeviceInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeviceInstances" (
    id bigint NOT NULL,
    serial integer,
    "parametersJSON" jsonb,
    "deviceClassId" bigint,
    "gpsLat" numeric(10,7),
    "gpsLong" numeric(10,7)
);


ALTER TABLE public."DeviceInstances" OWNER TO postgres;

--
-- Name: DeviceInstances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DeviceInstances_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DeviceInstances_id_seq" OWNER TO postgres;

--
-- Name: DeviceInstances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DeviceInstances_id_seq" OWNED BY public."DeviceInstances".id;


--
-- Name: DeviceParameters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DeviceParameters" (
    id bigint NOT NULL,
    "isSensor" boolean,
    "isECU" boolean,
    "isCamera" boolean,
    "isLidar" boolean,
    "isIllu" boolean,
    "isThermal" boolean,
    "isRadar" boolean,
    "modelNumber" integer,
    manufacturer character varying(255),
    name character varying(255),
    email character varying(255),
    phone integer,
    price integer,
    "DDPfin" integer,
    "IPcode" character varying(255),
    "powerConsumption" integer,
    "deviceSizeX" integer,
    "deviceSizeY" integer,
    "deviceSizeZ" integer,
    "integratedMeasuresJSON" jsonb,
    "cameraDataJSON" jsonb,
    "ECUDataJSON" jsonb,
    "lidarDataJSON" jsonb,
    "illumDataJSON" jsonb,
    "thermalDataJSON" jsonb,
    "radarDataJSON" jsonb,
    "powerDataJSON" jsonb,
    "otherDataJSON" jsonb
);


ALTER TABLE public."DeviceParameters" OWNER TO postgres;

--
-- Name: DeviceParameters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DeviceParameters_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DeviceParameters_id_seq" OWNER TO postgres;

--
-- Name: DeviceParameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DeviceParameters_id_seq" OWNED BY public."DeviceParameters".id;


--
-- Name: DevicePurchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DevicePurchases" (
    id bigint NOT NULL,
    "deviceName" character varying(255) NOT NULL,
    "devicePrice" numeric(16,2) NOT NULL,
    "deviceCount" integer NOT NULL,
    "deviceId" bigint,
    "orderId" bigint,
    CONSTRAINT "DevicePurchases_deviceCount_check" CHECK (("deviceCount" >= 0))
);


ALTER TABLE public."DevicePurchases" OWNER TO postgres;

--
-- Name: DevicePurchases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DevicePurchases_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DevicePurchases_id_seq" OWNER TO postgres;

--
-- Name: DevicePurchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DevicePurchases_id_seq" OWNED BY public."DevicePurchases".id;


--
-- Name: Devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Devices" (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    "manufacturerId" bigint NOT NULL,
    "buyingPrice" numeric(16,2) NOT NULL,
    product_number character varying(255) NOT NULL,
    published boolean NOT NULL,
    "salesPrice" numeric(16,2) NOT NULL,
    "seoDescription" text,
    "seoKeywords" character varying(255),
    "seoTitle" character varying(255),
    created_dt timestamp with time zone,
    "categoryId" bigint
);


ALTER TABLE public."Devices" OWNER TO postgres;

--
-- Name: Devices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Devices_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Devices_id_seq" OWNER TO postgres;

--
-- Name: Devices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Devices_id_seq" OWNED BY public."Devices".id;


--
-- Name: DockerInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DockerInstances" (
    id bigint NOT NULL,
    version integer,
    "dockerModelId" bigint NOT NULL
);


ALTER TABLE public."DockerInstances" OWNER TO postgres;

--
-- Name: DockerInstances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DockerInstances_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DockerInstances_id_seq" OWNER TO postgres;

--
-- Name: DockerInstances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DockerInstances_id_seq" OWNED BY public."DockerInstances".id;


--
-- Name: DockerModelDeviceClasses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DockerModelDeviceClasses" (
    id integer NOT NULL,
    type character varying(3),
    "deviceClassId" bigint NOT NULL,
    "dockerModelId" bigint NOT NULL
);


ALTER TABLE public."DockerModelDeviceClasses" OWNER TO postgres;

--
-- Name: DockerModelDeviceClasses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DockerModelDeviceClasses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DockerModelDeviceClasses_id_seq" OWNER TO postgres;

--
-- Name: DockerModelDeviceClasses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DockerModelDeviceClasses_id_seq" OWNED BY public."DockerModelDeviceClasses".id;


--
-- Name: DockerModelFeatureModel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DockerModelFeatureModel" (
    id integer NOT NULL,
    "dockerModelId" bigint NOT NULL,
    "featureModelId" bigint NOT NULL
);


ALTER TABLE public."DockerModelFeatureModel" OWNER TO postgres;

--
-- Name: DockerModelFeatureModel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DockerModelFeatureModel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DockerModelFeatureModel_id_seq" OWNER TO postgres;

--
-- Name: DockerModelFeatureModel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DockerModelFeatureModel_id_seq" OWNED BY public."DockerModelFeatureModel".id;


--
-- Name: DockerModels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."DockerModels" (
    id bigint NOT NULL,
    "dockerPayload" text,
    version integer
);


ALTER TABLE public."DockerModels" OWNER TO postgres;

--
-- Name: DockerModels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."DockerModels_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DockerModels_id_seq" OWNER TO postgres;

--
-- Name: DockerModels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."DockerModels_id_seq" OWNED BY public."DockerModels".id;


--
-- Name: Ecosystems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ecosystems" (
    id bigint NOT NULL,
    "organizationId" bigint NOT NULL
);


ALTER TABLE public."Ecosystems" OWNER TO postgres;

--
-- Name: EcosystemsEdgeNodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EcosystemsEdgeNodes" (
    id integer NOT NULL,
    "ecosystemId" bigint NOT NULL,
    "edgeNodeId" bigint NOT NULL
);


ALTER TABLE public."EcosystemsEdgeNodes" OWNER TO postgres;

--
-- Name: EcosystemsEdgeNodes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EcosystemsEdgeNodes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EcosystemsEdgeNodes_id_seq" OWNER TO postgres;

--
-- Name: EcosystemsEdgeNodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EcosystemsEdgeNodes_id_seq" OWNED BY public."EcosystemsEdgeNodes".id;


--
-- Name: Ecosystems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ecosystems_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ecosystems_id_seq" OWNER TO postgres;

--
-- Name: Ecosystems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ecosystems_id_seq" OWNED BY public."Ecosystems".id;


--
-- Name: EdgeNodeDevices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EdgeNodeDevices" (
    id integer NOT NULL,
    type character varying(3),
    "deviceInstanceId" bigint NOT NULL,
    "edgeNodeId" bigint NOT NULL
);


ALTER TABLE public."EdgeNodeDevices" OWNER TO postgres;

--
-- Name: EdgeNodeDevices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EdgeNodeDevices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdgeNodeDevices_id_seq" OWNER TO postgres;

--
-- Name: EdgeNodeDevices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EdgeNodeDevices_id_seq" OWNED BY public."EdgeNodeDevices".id;


--
-- Name: EdgeNodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EdgeNodes" (
    id bigint NOT NULL,
    "featureModelsJSON" jsonb,
    "featureInstancesJSON" jsonb,
    "dockerInstanceId" bigint NOT NULL,
    "organizationId" bigint NOT NULL
);


ALTER TABLE public."EdgeNodes" OWNER TO postgres;

--
-- Name: EdgeNodes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EdgeNodes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EdgeNodes_id_seq" OWNER TO postgres;

--
-- Name: EdgeNodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EdgeNodes_id_seq" OWNED BY public."EdgeNodes".id;


--
-- Name: EventsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EventsHistory" (
    id bigint NOT NULL,
    created_dt timestamp with time zone,
    "eventType" character varying(3),
    "verificationResult" character varying(3),
    "parametersJSON" jsonb,
    "edgeNodeId" bigint NOT NULL
);


ALTER TABLE public."EventsHistory" OWNER TO postgres;

--
-- Name: EventsHistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EventsHistory_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EventsHistory_id_seq" OWNER TO postgres;

--
-- Name: EventsHistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EventsHistory_id_seq" OWNED BY public."EventsHistory".id;


--
-- Name: FeatureInstanceAlgorithm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FeatureInstanceAlgorithm" (
    id integer NOT NULL,
    "algorithmId" bigint NOT NULL,
    "featureInstanceId" bigint NOT NULL
);


ALTER TABLE public."FeatureInstanceAlgorithm" OWNER TO postgres;

--
-- Name: FeatureInstanceAlgorithm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FeatureInstanceAlgorithm_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FeatureInstanceAlgorithm_id_seq" OWNER TO postgres;

--
-- Name: FeatureInstanceAlgorithm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FeatureInstanceAlgorithm_id_seq" OWNED BY public."FeatureInstanceAlgorithm".id;


--
-- Name: FeatureInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FeatureInstances" (
    id bigint NOT NULL,
    "highLevelFidelityJSON" jsonb,
    "totalCompTime" integer,
    version integer,
    "featureModelId" bigint NOT NULL,
    "parentECUclass" bigint NOT NULL,
    "projectId" bigint NOT NULL
);


ALTER TABLE public."FeatureInstances" OWNER TO postgres;

--
-- Name: FeatureInstances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FeatureInstances_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FeatureInstances_id_seq" OWNER TO postgres;

--
-- Name: FeatureInstances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FeatureInstances_id_seq" OWNED BY public."FeatureInstances".id;


--
-- Name: FeatureModelAlgorithm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FeatureModelAlgorithm" (
    id integer NOT NULL,
    "algorithmModelId" bigint NOT NULL,
    "featureModelId" bigint NOT NULL
);


ALTER TABLE public."FeatureModelAlgorithm" OWNER TO postgres;

--
-- Name: FeatureModelAlgorithm_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FeatureModelAlgorithm_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FeatureModelAlgorithm_id_seq" OWNER TO postgres;

--
-- Name: FeatureModelAlgorithm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FeatureModelAlgorithm_id_seq" OWNED BY public."FeatureModelAlgorithm".id;


--
-- Name: FeatureModels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FeatureModels" (
    id bigint NOT NULL,
    description text,
    "algClassSequenceJSON" jsonb,
    "inputDeviceClassReqsJSON" jsonb,
    "inputDeviceParamReqsJSON" jsonb,
    "highLevelReqsJSON" jsonb,
    version integer
);


ALTER TABLE public."FeatureModels" OWNER TO postgres;

--
-- Name: FeatureModels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FeatureModels_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FeatureModels_id_seq" OWNER TO postgres;

--
-- Name: FeatureModels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FeatureModels_id_seq" OWNED BY public."FeatureModels".id;


--
-- Name: FileStorage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FileStorage" (
    id bigint NOT NULL,
    "fileType" character varying(3),
    link character varying(255)
);


ALTER TABLE public."FileStorage" OWNER TO postgres;

--
-- Name: FileStorage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FileStorage_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FileStorage_id_seq" OWNER TO postgres;

--
-- Name: FileStorage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FileStorage_id_seq" OWNED BY public."FileStorage".id;


--
-- Name: FrameDatasets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FrameDatasets" (
    id bigint NOT NULL,
    name character varying(255),
    "isContinuous" boolean,
    "timeStart" integer,
    "timeEnd" integer,
    "isLabeled" boolean,
    "VDLisDownloaded" boolean,
    "VDLaddress" character varying(255),
    "VDLtimestampFound" timestamp with time zone,
    "augMetadataJSON" jsonb,
    "DataAcqInstructionsId" bigint NOT NULL
);


ALTER TABLE public."FrameDatasets" OWNER TO postgres;

--
-- Name: FrameDatasetsProjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."FrameDatasetsProjects" (
    id integer NOT NULL,
    "frameDatasetId" bigint NOT NULL,
    "projectId" bigint NOT NULL
);


ALTER TABLE public."FrameDatasetsProjects" OWNER TO postgres;

--
-- Name: FrameDatasetsProjects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FrameDatasetsProjects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FrameDatasetsProjects_id_seq" OWNER TO postgres;

--
-- Name: FrameDatasetsProjects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FrameDatasetsProjects_id_seq" OWNED BY public."FrameDatasetsProjects".id;


--
-- Name: FrameDatasets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."FrameDatasets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."FrameDatasets_id_seq" OWNER TO postgres;

--
-- Name: FrameDatasets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."FrameDatasets_id_seq" OWNED BY public."FrameDatasets".id;


--
-- Name: Frames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Frames" (
    id bigint NOT NULL,
    "frameFile" character varying(255),
    "timestamp" timestamp with time zone,
    "isValidation" boolean,
    "frameDatasetId" bigint NOT NULL
);


ALTER TABLE public."Frames" OWNER TO postgres;

--
-- Name: Frames_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Frames_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Frames_id_seq" OWNER TO postgres;

--
-- Name: Frames_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Frames_id_seq" OWNED BY public."Frames".id;


--
-- Name: HITsets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."HITsets" (
    id bigint NOT NULL,
    "tOneWorkerBlacklistJSON" jsonb,
    name character varying(255),
    description text,
    status character varying(255),
    "labelName" character varying(255),
    "labelDescription" text,
    "labelClass" integer,
    "datasetName" character varying(255),
    created_dt timestamp with time zone,
    "timeRemaining" time without time zone,
    "HITpercentage" integer,
    succeeded boolean,
    "tOneTotalDuration" integer,
    "tOneTotalCost" character varying(255),
    "tTwoTotalDuration" integer,
    "tTwoTotalCost" character varying(255),
    "totalDuration" integer,
    "totalCost" character varying(255),
    "tOneMetadataJSON" jsonb,
    "tTwoMetadataJSON" jsonb,
    "assocLabelsetId" bigint NOT NULL,
    "frameDatasetId" bigint NOT NULL,
    "questionXMLid" bigint NOT NULL
);


ALTER TABLE public."HITsets" OWNER TO postgres;

--
-- Name: HITsets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."HITsets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."HITsets_id_seq" OWNER TO postgres;

--
-- Name: HITsets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."HITsets_id_seq" OWNED BY public."HITsets".id;


--
-- Name: LabelClasses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LabelClasses" (
    id bigint NOT NULL,
    "className" character varying(255),
    "classDescription" text,
    "UItool" character varying(255),
    "conflictDefinition" character varying(255),
    "isConflictArg" boolean,
    "isArgument" boolean,
    "argumentType" character varying(255),
    structure jsonb
);


ALTER TABLE public."LabelClasses" OWNER TO postgres;

--
-- Name: LabelClasses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LabelClasses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LabelClasses_id_seq" OWNER TO postgres;

--
-- Name: LabelClasses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LabelClasses_id_seq" OWNED BY public."LabelClasses".id;


--
-- Name: LabelData; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LabelData" (
    id bigint NOT NULL,
    "dataProper" integer,
    "isVoid" boolean,
    "tOneHITid" character varying(255),
    "tTwoHITid" character varying(255),
    "labelDatasetId" bigint NOT NULL,
    "parentFrame" bigint NOT NULL
);


ALTER TABLE public."LabelData" OWNER TO postgres;

--
-- Name: LabelData_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LabelData_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LabelData_id_seq" OWNER TO postgres;

--
-- Name: LabelData_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LabelData_id_seq" OWNED BY public."LabelData".id;


--
-- Name: LabelDatasets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."LabelDatasets" (
    id bigint NOT NULL,
    "labelName" character varying(255),
    "labelDescription" text,
    "labelClassId" bigint NOT NULL,
    "parentAlgorithmModelId" bigint NOT NULL,
    "parentFrameDatasetId" bigint NOT NULL
);


ALTER TABLE public."LabelDatasets" OWNER TO postgres;

--
-- Name: LabelDatasets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."LabelDatasets_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LabelDatasets_id_seq" OWNER TO postgres;

--
-- Name: LabelDatasets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."LabelDatasets_id_seq" OWNED BY public."LabelDatasets".id;


--
-- Name: Licenses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Licenses" (
    id bigint NOT NULL,
    name character varying(255),
    license_type character varying(3) NOT NULL,
    price character varying(255),
    "nextPayment" timestamp with time zone,
    "purchaseDate" timestamp with time zone,
    "terminationDate" timestamp with time zone,
    "userId" bigint NOT NULL
);


ALTER TABLE public."Licenses" OWNER TO postgres;

--
-- Name: Licenses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Licenses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Licenses_id_seq" OWNER TO postgres;

--
-- Name: Licenses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Licenses_id_seq" OWNED BY public."Licenses".id;


--
-- Name: Manufacturers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Manufacturers" (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255),
    contact_person character varying(255),
    order_email character varying(254),
    phone character varying(255),
    support_email character varying(254),
    vat integer
);


ALTER TABLE public."Manufacturers" OWNER TO postgres;

--
-- Name: Manufacturers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Manufacturers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Manufacturers_id_seq" OWNER TO postgres;

--
-- Name: Manufacturers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Manufacturers_id_seq" OWNED BY public."Manufacturers".id;


--
-- Name: ObjectModelAlgorithmModel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ObjectModelAlgorithmModel" (
    id integer NOT NULL,
    "algorithmModelId" bigint NOT NULL,
    "objectModelId" bigint NOT NULL
);


ALTER TABLE public."ObjectModelAlgorithmModel" OWNER TO postgres;

--
-- Name: ObjectModelAlgorithmModel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ObjectModelAlgorithmModel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ObjectModelAlgorithmModel_id_seq" OWNER TO postgres;

--
-- Name: ObjectModelAlgorithmModel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ObjectModelAlgorithmModel_id_seq" OWNED BY public."ObjectModelAlgorithmModel".id;


--
-- Name: ObjectModelFeatureModel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ObjectModelFeatureModel" (
    id integer NOT NULL,
    "featureModelId" bigint NOT NULL,
    "objectModelId" bigint NOT NULL
);


ALTER TABLE public."ObjectModelFeatureModel" OWNER TO postgres;

--
-- Name: ObjectModelFeatureModel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ObjectModelFeatureModel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ObjectModelFeatureModel_id_seq" OWNER TO postgres;

--
-- Name: ObjectModelFeatureModel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ObjectModelFeatureModel_id_seq" OWNED BY public."ObjectModelFeatureModel".id;


--
-- Name: ObjectModelProject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ObjectModelProject" (
    id integer NOT NULL,
    "objectModelId" bigint NOT NULL,
    "projectId" bigint NOT NULL
);


ALTER TABLE public."ObjectModelProject" OWNER TO postgres;

--
-- Name: ObjectModelProject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ObjectModelProject_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ObjectModelProject_id_seq" OWNER TO postgres;

--
-- Name: ObjectModelProject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ObjectModelProject_id_seq" OWNED BY public."ObjectModelProject".id;


--
-- Name: ObjectModels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ObjectModels" (
    id bigint NOT NULL,
    description text,
    "objectFile" character varying(255),
    version integer
);


ALTER TABLE public."ObjectModels" OWNER TO postgres;

--
-- Name: ObjectModels_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ObjectModels_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ObjectModels_id_seq" OWNER TO postgres;

--
-- Name: ObjectModels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ObjectModels_id_seq" OWNED BY public."ObjectModels".id;


--
-- Name: OperationClasses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OperationClasses" (
    id bigint NOT NULL,
    "className" character varying(255),
    "argNamesJSON" jsonb,
    "argTypesJSON" jsonb,
    "framePayload" text,
    "labelPayload" text
);


ALTER TABLE public."OperationClasses" OWNER TO postgres;

--
-- Name: OperationClassesSupportedLabelClasses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OperationClassesSupportedLabelClasses" (
    id integer NOT NULL,
    "labelClassId" bigint NOT NULL,
    "operationClassId" bigint NOT NULL
);


ALTER TABLE public."OperationClassesSupportedLabelClasses" OWNER TO postgres;

--
-- Name: OperationClassesSupportedLabelClasses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OperationClassesSupportedLabelClasses_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OperationClassesSupportedLabelClasses_id_seq" OWNER TO postgres;

--
-- Name: OperationClassesSupportedLabelClasses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OperationClassesSupportedLabelClasses_id_seq" OWNED BY public."OperationClassesSupportedLabelClasses".id;


--
-- Name: OperationClasses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OperationClasses_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OperationClasses_id_seq" OWNER TO postgres;

--
-- Name: OperationClasses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OperationClasses_id_seq" OWNED BY public."OperationClasses".id;


--
-- Name: OperationInstances; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OperationInstances" (
    id bigint NOT NULL,
    "parametersJSON" jsonb,
    "ignoreOoB" boolean,
    "fillType" character varying(255),
    "frameDatasetId" bigint NOT NULL,
    "operationClassId" bigint NOT NULL
);


ALTER TABLE public."OperationInstances" OWNER TO postgres;

--
-- Name: OperationInstances_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OperationInstances_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OperationInstances_id_seq" OWNER TO postgres;

--
-- Name: OperationInstances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OperationInstances_id_seq" OWNED BY public."OperationInstances".id;


--
-- Name: Organizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Organizations" (
    id bigint NOT NULL,
    name character varying(255),
    "VAT" character varying(255),
    main_firstname character varying(255),
    main_lastname character varying(255),
    main_address character varying(255),
    main_phone character varying(255),
    main_email character varying(255),
    inv_firstname character varying(255),
    inv_lastname character varying(255),
    inv_address character varying(255),
    inv_phone character varying(255),
    inv_email character varying(255),
    created_dt timestamp with time zone NOT NULL,
    is_invoice_payment_method boolean NOT NULL
);


ALTER TABLE public."Organizations" OWNER TO postgres;

--
-- Name: Organizations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Organizations_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Organizations_id_seq" OWNER TO postgres;

--
-- Name: Organizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Organizations_id_seq" OWNED BY public."Organizations".id;


--
-- Name: OutsourcedInst; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."OutsourcedInst" (
    id bigint NOT NULL,
    name character varying(255),
    "labelName" character varying(255),
    "labelDescription" text,
    "HITsetName" character varying(255),
    "HITsetDescription" text,
    "tOneMetadataJSON" jsonb,
    "tTwoMetadataJSON" jsonb,
    "annotInstId" bigint NOT NULL,
    "frameDatasetId" bigint NOT NULL,
    "questionXMLid" bigint NOT NULL
);


ALTER TABLE public."OutsourcedInst" OWNER TO postgres;

--
-- Name: OutsourcedInst_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."OutsourcedInst_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."OutsourcedInst_id_seq" OWNER TO postgres;

--
-- Name: OutsourcedInst_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."OutsourcedInst_id_seq" OWNED BY public."OutsourcedInst".id;


--
-- Name: ProjectEdgeNodes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProjectEdgeNodes" (
    id integer NOT NULL,
    "edgeNodeId" bigint NOT NULL,
    "projectId" bigint NOT NULL
);


ALTER TABLE public."ProjectEdgeNodes" OWNER TO postgres;

--
-- Name: ProjectEdgeNodes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProjectEdgeNodes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ProjectEdgeNodes_id_seq" OWNER TO postgres;

--
-- Name: ProjectEdgeNodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProjectEdgeNodes_id_seq" OWNED BY public."ProjectEdgeNodes".id;


--
-- Name: ProjectInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ProjectInstructions" (
    id bigint NOT NULL,
    version integer,
    "annotInstId" bigint NOT NULL,
    "augmentInstId" bigint NOT NULL,
    "dataAcqInstId" bigint NOT NULL,
    "projectId" bigint NOT NULL,
    "trainingInstrId" bigint NOT NULL,
    "validationInstrId" bigint NOT NULL
);


ALTER TABLE public."ProjectInstructions" OWNER TO postgres;

--
-- Name: ProjectInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ProjectInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ProjectInstructions_id_seq" OWNER TO postgres;

--
-- Name: ProjectInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ProjectInstructions_id_seq" OWNED BY public."ProjectInstructions".id;


--
-- Name: Projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Projects" (
    id bigint NOT NULL,
    name character varying(255),
    decription character varying(255),
    status character varying(255),
    "settingsJSON" jsonb,
    "ecosystemId" bigint,
    "featuremodelId" bigint,
    "organizationId" bigint
);


ALTER TABLE public."Projects" OWNER TO postgres;

--
-- Name: Projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Projects_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Projects_id_seq" OWNER TO postgres;

--
-- Name: Projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Projects_id_seq" OWNED BY public."Projects".id;


--
-- Name: Purchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Purchases" (
    id bigint NOT NULL,
    "paymentId" character varying(255),
    total integer NOT NULL,
    "VAT" numeric(16,2) NOT NULL,
    created_dt timestamp with time zone,
    "organizationId" bigint,
    CONSTRAINT "Purchases_total_check" CHECK ((total >= 0))
);


ALTER TABLE public."Purchases" OWNER TO postgres;

--
-- Name: Purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Purchases_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Purchases_id_seq" OWNER TO postgres;

--
-- Name: Purchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Purchases_id_seq" OWNED BY public."Purchases".id;


--
-- Name: QualityMetricStruct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."QualityMetricStruct" (
    id bigint NOT NULL,
    name character varying(255),
    payload text,
    type character varying(255)
);


ALTER TABLE public."QualityMetricStruct" OWNER TO postgres;

--
-- Name: QualityMetricStruct_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."QualityMetricStruct_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."QualityMetricStruct_id_seq" OWNER TO postgres;

--
-- Name: QualityMetricStruct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."QualityMetricStruct_id_seq" OWNED BY public."QualityMetricStruct".id;


--
-- Name: QuestionXMLs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."QuestionXMLs" (
    id bigint NOT NULL,
    name character varying(255),
    description text,
    "answerFieldsJSON" jsonb,
    "exampleFramesJSON" jsonb,
    "tOneDirectPayload" text,
    "tTwoDirectPayload" text,
    "creationTime" timestamp with time zone,
    "questionTitle" character varying(255),
    "questionDescription" text,
    "questionInstText" character varying(255),
    "labelClassArg" character varying(255),
    "labelClassConfArg" character varying(255),
    "labelClassId" bigint NOT NULL
);


ALTER TABLE public."QuestionXMLs" OWNER TO postgres;

--
-- Name: QuestionXMLs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."QuestionXMLs_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."QuestionXMLs_id_seq" OWNER TO postgres;

--
-- Name: QuestionXMLs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."QuestionXMLs_id_seq" OWNED BY public."QuestionXMLs".id;


--
-- Name: RecurrentCharges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RecurrentCharges" (
    id bigint NOT NULL,
    "paymentId" character varying(255),
    "deviceLicenseFee" numeric(16,2) NOT NULL,
    "userLicenseFee" numeric(16,2) NOT NULL,
    "deviceCnt" integer NOT NULL,
    "VAT" numeric(16,2) NOT NULL,
    total integer NOT NULL,
    created_dt timestamp with time zone NOT NULL,
    "invoiceData" jsonb NOT NULL,
    "organizationId" bigint NOT NULL,
    is_invoice boolean NOT NULL,
    CONSTRAINT "RecurrentCharges_deviceCnt_check" CHECK (("deviceCnt" >= 0)),
    CONSTRAINT "RecurrentCharges_total_check" CHECK ((total >= 0))
);


ALTER TABLE public."RecurrentCharges" OWNER TO postgres;

--
-- Name: RecurrentCharges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RecurrentCharges_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RecurrentCharges_id_seq" OWNER TO postgres;

--
-- Name: RecurrentCharges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RecurrentCharges_id_seq" OWNED BY public."RecurrentCharges".id;


--
-- Name: RelevantData; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RelevantData" (
    id bigint NOT NULL,
    "sensorGpsLat" numeric(10,7),
    "sensorGpsLong" numeric(10,7),
    "relDataType" character varying(255),
    value integer,
    "locationX" numeric(16,2),
    "locationY" numeric(16,2),
    "locationZ" numeric(16,2),
    "orientTheta" numeric(16,2),
    "orientPhi" numeric(16,2),
    "timestamp" timestamp with time zone,
    "isTaggedData" boolean,
    "parametersJSON" jsonb,
    "deviceInstanceId" bigint NOT NULL,
    "edgeNodeId" bigint NOT NULL,
    "featureModelId" bigint NOT NULL,
    "objectModelId" bigint NOT NULL,
    "projectId" bigint NOT NULL,
    "taggedDataId" bigint NOT NULL,
    "ambientWeatherCondition" character varying(3),
    "cadFileTag" bigint,
    "eventType" character varying(3),
    face bigint,
    "licensePlate" bigint,
    "licensePlateNumber" character varying(15),
    "objectClass" character varying(3),
    "pedestrianFlow" jsonb,
    "roadWeatherCondition" character varying(3),
    "stoppedVehicleDetection" jsonb,
    "trafficFlow" jsonb,
    "vehicleClassification" character varying(3),
    "ambientTemperature" numeric(5,2),
    "roadTemperature" numeric(5,2),
    uuid uuid NOT NULL
);


ALTER TABLE public."RelevantData" OWNER TO postgres;

--
-- Name: RelevantData_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RelevantData_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RelevantData_id_seq" OWNER TO postgres;

--
-- Name: RelevantData_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RelevantData_id_seq" OWNED BY public."RelevantData".id;


--
-- Name: RoadConditions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RoadConditions" (
    id bigint NOT NULL,
    created_dt timestamp with time zone,
    "parametersJSON" jsonb,
    "edgeNodeId" bigint NOT NULL
);


ALTER TABLE public."RoadConditions" OWNER TO postgres;

--
-- Name: RoadConditions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RoadConditions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RoadConditions_id_seq" OWNER TO postgres;

--
-- Name: RoadConditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RoadConditions_id_seq" OWNED BY public."RoadConditions".id;


--
-- Name: TrainingInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TrainingInstructions" (
    id bigint NOT NULL,
    "hyperparametersJSON" jsonb,
    "dataSplitInst" bigint NOT NULL
);


ALTER TABLE public."TrainingInstructions" OWNER TO postgres;

--
-- Name: TrainingInstructionsLabelDatasets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TrainingInstructionsLabelDatasets" (
    id integer NOT NULL,
    "labelDatasetId" bigint NOT NULL,
    "TrainingInstId" bigint NOT NULL
);


ALTER TABLE public."TrainingInstructionsLabelDatasets" OWNER TO postgres;

--
-- Name: TrainingInstructionsLabelDatasets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TrainingInstructionsLabelDatasets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TrainingInstructionsLabelDatasets_id_seq" OWNER TO postgres;

--
-- Name: TrainingInstructionsLabelDatasets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TrainingInstructionsLabelDatasets_id_seq" OWNED BY public."TrainingInstructionsLabelDatasets".id;


--
-- Name: TrainingInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TrainingInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TrainingInstructions_id_seq" OWNER TO postgres;

--
-- Name: TrainingInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TrainingInstructions_id_seq" OWNED BY public."TrainingInstructions".id;


--
-- Name: TypeCode; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TypeCode" (
    id bigint NOT NULL,
    "typeName" character varying(255) NOT NULL,
    orderby integer,
    value character varying(3),
    "shortDescription" character varying(255),
    "longDescription" text,
    created_dt timestamp with time zone,
    created_by character varying(255)
);


ALTER TABLE public."TypeCode" OWNER TO postgres;

--
-- Name: TypeCode_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TypeCode_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TypeCode_id_seq" OWNER TO postgres;

--
-- Name: TypeCode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TypeCode_id_seq" OWNED BY public."TypeCode".id;


--
-- Name: Users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Users" (
    id bigint NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    address character varying(255),
    phone character varying(255),
    email character varying(255) NOT NULL,
    created_dt timestamp with time zone,
    username character varying(255) NOT NULL,
    password character varying(255),
    user_level character varying(3),
    "organizationId" bigint NOT NULL,
    "isEmailVerified" boolean NOT NULL,
    "awsAccessKeyId" character varying(255),
    "awsSecretAccessKey" character varying(255),
    deleted_dt timestamp with time zone
);


ALTER TABLE public."Users" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Users_id_seq" OWNER TO postgres;

--
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- Name: ValidationInstructions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ValidationInstructions" (
    id bigint NOT NULL,
    "metadataJSON" jsonb
);


ALTER TABLE public."ValidationInstructions" OWNER TO postgres;

--
-- Name: ValidationInstructions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ValidationInstructions_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ValidationInstructions_id_seq" OWNER TO postgres;

--
-- Name: ValidationInstructions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ValidationInstructions_id_seq" OWNED BY public."ValidationInstructions".id;


--
-- Name: Weights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Weights" (
    id bigint NOT NULL,
    payload text,
    version integer
);


ALTER TABLE public."Weights" OWNER TO postgres;

--
-- Name: Weights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Weights_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Weights_id_seq" OWNER TO postgres;

--
-- Name: Weights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Weights_id_seq" OWNED BY public."Weights".id;


--
-- Name: Workers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Workers" (
    id bigint NOT NULL,
    "associatedHITsetsJSON" jsonb,
    "tOneAssignmentsDone" integer,
    "tOneRating" numeric(16,2),
    "tTwoAssignmentsDone" integer,
    "tTwoRating" numeric(16,2)
);


ALTER TABLE public."Workers" OWNER TO postgres;

--
-- Name: Workers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Workers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Workers_id_seq" OWNER TO postgres;

--
-- Name: Workers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Workers_id_seq" OWNED BY public."Workers".id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: recon_db_manager_deviceimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recon_db_manager_deviceimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recon_db_manager_deviceimage_id_seq OWNER TO postgres;

--
-- Name: recon_db_manager_deviceimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recon_db_manager_deviceimage_id_seq OWNED BY public."DeviceImages".id;


--
-- Name: AlgorithmInstanceDeployedDevices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceDeployedDevices" ALTER COLUMN id SET DEFAULT nextval('public."AlgorithmInstanceDeployedDevices_id_seq"'::regclass);


--
-- Name: AlgorithmInstanceObjectModel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceObjectModel" ALTER COLUMN id SET DEFAULT nextval('public."AlgorithmInstanceObjectModel_id_seq"'::regclass);


--
-- Name: AlgorithmInstanceTrainingInst id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceTrainingInst" ALTER COLUMN id SET DEFAULT nextval('public."AlgorithmInstanceTrainingInst_id_seq"'::regclass);


--
-- Name: AlgorithmInstances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstances" ALTER COLUMN id SET DEFAULT nextval('public."AlgorithmInstances_id_seq"'::regclass);


--
-- Name: AlgorithmModels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmModels" ALTER COLUMN id SET DEFAULT nextval('public."AlgorithmModels_id_seq"'::regclass);


--
-- Name: AnnotationInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AnnotationInstructions" ALTER COLUMN id SET DEFAULT nextval('public."AnnotationInstructions_id_seq"'::regclass);


--
-- Name: Architectures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Architectures" ALTER COLUMN id SET DEFAULT nextval('public."Architectures_id_seq"'::regclass);


--
-- Name: AugmentationInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AugmentationInstructions" ALTER COLUMN id SET DEFAULT nextval('public."AugmentationInstructions_id_seq"'::regclass);


--
-- Name: Categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories" ALTER COLUMN id SET DEFAULT nextval('public."Categories_id_seq"'::regclass);


--
-- Name: DataAcqInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataAcqInstructions" ALTER COLUMN id SET DEFAULT nextval('public."DataAcqInstructions_id_seq"'::regclass);


--
-- Name: DataSplitInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSplitInstructions" ALTER COLUMN id SET DEFAULT nextval('public."DataSplitInstructions_id_seq"'::regclass);


--
-- Name: DetectedObjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectedObjects" ALTER COLUMN id SET DEFAULT nextval('public."DetectedObjects_id_seq"'::regclass);


--
-- Name: DetectionsSummary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectionsSummary" ALTER COLUMN id SET DEFAULT nextval('public."DetectionsSummary_id_seq"'::regclass);


--
-- Name: DeviceClasses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceClasses" ALTER COLUMN id SET DEFAULT nextval('public."DeviceClasses_id_seq"'::regclass);


--
-- Name: DeviceImages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceImages" ALTER COLUMN id SET DEFAULT nextval('public.recon_db_manager_deviceimage_id_seq'::regclass);


--
-- Name: DeviceInstances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceInstances" ALTER COLUMN id SET DEFAULT nextval('public."DeviceInstances_id_seq"'::regclass);


--
-- Name: DeviceParameters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceParameters" ALTER COLUMN id SET DEFAULT nextval('public."DeviceParameters_id_seq"'::regclass);


--
-- Name: DevicePurchases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DevicePurchases" ALTER COLUMN id SET DEFAULT nextval('public."DevicePurchases_id_seq"'::regclass);


--
-- Name: Devices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices" ALTER COLUMN id SET DEFAULT nextval('public."Devices_id_seq"'::regclass);


--
-- Name: DockerInstances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerInstances" ALTER COLUMN id SET DEFAULT nextval('public."DockerInstances_id_seq"'::regclass);


--
-- Name: DockerModelDeviceClasses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelDeviceClasses" ALTER COLUMN id SET DEFAULT nextval('public."DockerModelDeviceClasses_id_seq"'::regclass);


--
-- Name: DockerModelFeatureModel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelFeatureModel" ALTER COLUMN id SET DEFAULT nextval('public."DockerModelFeatureModel_id_seq"'::regclass);


--
-- Name: DockerModels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModels" ALTER COLUMN id SET DEFAULT nextval('public."DockerModels_id_seq"'::regclass);


--
-- Name: Ecosystems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ecosystems" ALTER COLUMN id SET DEFAULT nextval('public."Ecosystems_id_seq"'::regclass);


--
-- Name: EcosystemsEdgeNodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EcosystemsEdgeNodes" ALTER COLUMN id SET DEFAULT nextval('public."EcosystemsEdgeNodes_id_seq"'::regclass);


--
-- Name: EdgeNodeDevices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodeDevices" ALTER COLUMN id SET DEFAULT nextval('public."EdgeNodeDevices_id_seq"'::regclass);


--
-- Name: EdgeNodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodes" ALTER COLUMN id SET DEFAULT nextval('public."EdgeNodes_id_seq"'::regclass);


--
-- Name: EventsHistory id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EventsHistory" ALTER COLUMN id SET DEFAULT nextval('public."EventsHistory_id_seq"'::regclass);


--
-- Name: FeatureInstanceAlgorithm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstanceAlgorithm" ALTER COLUMN id SET DEFAULT nextval('public."FeatureInstanceAlgorithm_id_seq"'::regclass);


--
-- Name: FeatureInstances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstances" ALTER COLUMN id SET DEFAULT nextval('public."FeatureInstances_id_seq"'::regclass);


--
-- Name: FeatureModelAlgorithm id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureModelAlgorithm" ALTER COLUMN id SET DEFAULT nextval('public."FeatureModelAlgorithm_id_seq"'::regclass);


--
-- Name: FeatureModels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureModels" ALTER COLUMN id SET DEFAULT nextval('public."FeatureModels_id_seq"'::regclass);


--
-- Name: FileStorage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FileStorage" ALTER COLUMN id SET DEFAULT nextval('public."FileStorage_id_seq"'::regclass);


--
-- Name: FrameDatasets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasets" ALTER COLUMN id SET DEFAULT nextval('public."FrameDatasets_id_seq"'::regclass);


--
-- Name: FrameDatasetsProjects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasetsProjects" ALTER COLUMN id SET DEFAULT nextval('public."FrameDatasetsProjects_id_seq"'::regclass);


--
-- Name: Frames id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frames" ALTER COLUMN id SET DEFAULT nextval('public."Frames_id_seq"'::regclass);


--
-- Name: HITsets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HITsets" ALTER COLUMN id SET DEFAULT nextval('public."HITsets_id_seq"'::regclass);


--
-- Name: LabelClasses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelClasses" ALTER COLUMN id SET DEFAULT nextval('public."LabelClasses_id_seq"'::regclass);


--
-- Name: LabelData id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelData" ALTER COLUMN id SET DEFAULT nextval('public."LabelData_id_seq"'::regclass);


--
-- Name: LabelDatasets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelDatasets" ALTER COLUMN id SET DEFAULT nextval('public."LabelDatasets_id_seq"'::regclass);


--
-- Name: Licenses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Licenses" ALTER COLUMN id SET DEFAULT nextval('public."Licenses_id_seq"'::regclass);


--
-- Name: Manufacturers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Manufacturers" ALTER COLUMN id SET DEFAULT nextval('public."Manufacturers_id_seq"'::regclass);


--
-- Name: ObjectModelAlgorithmModel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelAlgorithmModel" ALTER COLUMN id SET DEFAULT nextval('public."ObjectModelAlgorithmModel_id_seq"'::regclass);


--
-- Name: ObjectModelFeatureModel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelFeatureModel" ALTER COLUMN id SET DEFAULT nextval('public."ObjectModelFeatureModel_id_seq"'::regclass);


--
-- Name: ObjectModelProject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelProject" ALTER COLUMN id SET DEFAULT nextval('public."ObjectModelProject_id_seq"'::regclass);


--
-- Name: ObjectModels id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModels" ALTER COLUMN id SET DEFAULT nextval('public."ObjectModels_id_seq"'::regclass);


--
-- Name: OperationClasses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationClasses" ALTER COLUMN id SET DEFAULT nextval('public."OperationClasses_id_seq"'::regclass);


--
-- Name: OperationClassesSupportedLabelClasses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationClassesSupportedLabelClasses" ALTER COLUMN id SET DEFAULT nextval('public."OperationClassesSupportedLabelClasses_id_seq"'::regclass);


--
-- Name: OperationInstances id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationInstances" ALTER COLUMN id SET DEFAULT nextval('public."OperationInstances_id_seq"'::regclass);


--
-- Name: Organizations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organizations" ALTER COLUMN id SET DEFAULT nextval('public."Organizations_id_seq"'::regclass);


--
-- Name: OutsourcedInst id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OutsourcedInst" ALTER COLUMN id SET DEFAULT nextval('public."OutsourcedInst_id_seq"'::regclass);


--
-- Name: ProjectEdgeNodes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectEdgeNodes" ALTER COLUMN id SET DEFAULT nextval('public."ProjectEdgeNodes_id_seq"'::regclass);


--
-- Name: ProjectInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions" ALTER COLUMN id SET DEFAULT nextval('public."ProjectInstructions_id_seq"'::regclass);


--
-- Name: Projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projects" ALTER COLUMN id SET DEFAULT nextval('public."Projects_id_seq"'::regclass);


--
-- Name: Purchases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Purchases" ALTER COLUMN id SET DEFAULT nextval('public."Purchases_id_seq"'::regclass);


--
-- Name: QualityMetricStruct id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualityMetricStruct" ALTER COLUMN id SET DEFAULT nextval('public."QualityMetricStruct_id_seq"'::regclass);


--
-- Name: QuestionXMLs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QuestionXMLs" ALTER COLUMN id SET DEFAULT nextval('public."QuestionXMLs_id_seq"'::regclass);


--
-- Name: RecurrentCharges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RecurrentCharges" ALTER COLUMN id SET DEFAULT nextval('public."RecurrentCharges_id_seq"'::regclass);


--
-- Name: RelevantData id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData" ALTER COLUMN id SET DEFAULT nextval('public."RelevantData_id_seq"'::regclass);


--
-- Name: RoadConditions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RoadConditions" ALTER COLUMN id SET DEFAULT nextval('public."RoadConditions_id_seq"'::regclass);


--
-- Name: TrainingInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructions" ALTER COLUMN id SET DEFAULT nextval('public."TrainingInstructions_id_seq"'::regclass);


--
-- Name: TrainingInstructionsLabelDatasets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructionsLabelDatasets" ALTER COLUMN id SET DEFAULT nextval('public."TrainingInstructionsLabelDatasets_id_seq"'::regclass);


--
-- Name: TypeCode id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TypeCode" ALTER COLUMN id SET DEFAULT nextval('public."TypeCode_id_seq"'::regclass);


--
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- Name: ValidationInstructions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ValidationInstructions" ALTER COLUMN id SET DEFAULT nextval('public."ValidationInstructions_id_seq"'::regclass);


--
-- Name: Weights id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Weights" ALTER COLUMN id SET DEFAULT nextval('public."Weights_id_seq"'::regclass);


--
-- Name: Workers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Workers" ALTER COLUMN id SET DEFAULT nextval('public."Workers_id_seq"'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: AlgorithmInstanceDeployedDevices AlgorithmInstanceDeployedDevices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceDeployedDevices"
    ADD CONSTRAINT "AlgorithmInstanceDeployedDevices_pkey" PRIMARY KEY (id);


--
-- Name: AlgorithmInstanceObjectModel AlgorithmInstanceObjectModel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceObjectModel"
    ADD CONSTRAINT "AlgorithmInstanceObjectModel_pkey" PRIMARY KEY (id);


--
-- Name: AlgorithmInstanceTrainingInst AlgorithmInstanceTrainingInst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceTrainingInst"
    ADD CONSTRAINT "AlgorithmInstanceTrainingInst_pkey" PRIMARY KEY (id);


--
-- Name: AlgorithmInstances AlgorithmInstances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstances"
    ADD CONSTRAINT "AlgorithmInstances_pkey" PRIMARY KEY (id);


--
-- Name: AlgorithmModels AlgorithmModels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmModels"
    ADD CONSTRAINT "AlgorithmModels_pkey" PRIMARY KEY (id);


--
-- Name: AnnotationInstructions AnnotationInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AnnotationInstructions"
    ADD CONSTRAINT "AnnotationInstructions_pkey" PRIMARY KEY (id);


--
-- Name: Architectures Architectures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Architectures"
    ADD CONSTRAINT "Architectures_pkey" PRIMARY KEY (id);


--
-- Name: AugmentationInstructions AugmentationInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AugmentationInstructions"
    ADD CONSTRAINT "AugmentationInstructions_pkey" PRIMARY KEY (id);


--
-- Name: Categories Categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Categories"
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (id);


--
-- Name: DataAcqInstructions DataAcqInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataAcqInstructions"
    ADD CONSTRAINT "DataAcqInstructions_pkey" PRIMARY KEY (id);


--
-- Name: DataSplitInstructions DataSplitInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DataSplitInstructions"
    ADD CONSTRAINT "DataSplitInstructions_pkey" PRIMARY KEY (id);


--
-- Name: DetectedObjects DetectedObjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectedObjects"
    ADD CONSTRAINT "DetectedObjects_pkey" PRIMARY KEY (id);


--
-- Name: DetectionsSummary DetectionsSummary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectionsSummary"
    ADD CONSTRAINT "DetectionsSummary_pkey" PRIMARY KEY (id);


--
-- Name: DeviceClasses DeviceClasses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceClasses"
    ADD CONSTRAINT "DeviceClasses_pkey" PRIMARY KEY (id);


--
-- Name: DeviceInstances DeviceInstances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceInstances"
    ADD CONSTRAINT "DeviceInstances_pkey" PRIMARY KEY (id);


--
-- Name: DeviceParameters DeviceParameters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceParameters"
    ADD CONSTRAINT "DeviceParameters_pkey" PRIMARY KEY (id);


--
-- Name: DevicePurchases DevicePurchases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DevicePurchases"
    ADD CONSTRAINT "DevicePurchases_pkey" PRIMARY KEY (id);


--
-- Name: Devices Devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "Devices_pkey" PRIMARY KEY (id);


--
-- Name: DockerInstances DockerInstances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerInstances"
    ADD CONSTRAINT "DockerInstances_pkey" PRIMARY KEY (id);


--
-- Name: DockerModelDeviceClasses DockerModelDeviceClasses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelDeviceClasses"
    ADD CONSTRAINT "DockerModelDeviceClasses_pkey" PRIMARY KEY (id);


--
-- Name: DockerModelFeatureModel DockerModelFeatureModel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelFeatureModel"
    ADD CONSTRAINT "DockerModelFeatureModel_pkey" PRIMARY KEY (id);


--
-- Name: DockerModels DockerModels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModels"
    ADD CONSTRAINT "DockerModels_pkey" PRIMARY KEY (id);


--
-- Name: EcosystemsEdgeNodes EcosystemsEdgeNodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EcosystemsEdgeNodes"
    ADD CONSTRAINT "EcosystemsEdgeNodes_pkey" PRIMARY KEY (id);


--
-- Name: Ecosystems Ecosystems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ecosystems"
    ADD CONSTRAINT "Ecosystems_pkey" PRIMARY KEY (id);


--
-- Name: EdgeNodeDevices EdgeNodeDevices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodeDevices"
    ADD CONSTRAINT "EdgeNodeDevices_pkey" PRIMARY KEY (id);


--
-- Name: EdgeNodes EdgeNodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodes"
    ADD CONSTRAINT "EdgeNodes_pkey" PRIMARY KEY (id);


--
-- Name: EventsHistory EventsHistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EventsHistory"
    ADD CONSTRAINT "EventsHistory_pkey" PRIMARY KEY (id);


--
-- Name: FeatureInstanceAlgorithm FeatureInstanceAlgorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstanceAlgorithm"
    ADD CONSTRAINT "FeatureInstanceAlgorithm_pkey" PRIMARY KEY (id);


--
-- Name: FeatureInstances FeatureInstances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstances"
    ADD CONSTRAINT "FeatureInstances_pkey" PRIMARY KEY (id);


--
-- Name: FeatureModelAlgorithm FeatureModelAlgorithm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureModelAlgorithm"
    ADD CONSTRAINT "FeatureModelAlgorithm_pkey" PRIMARY KEY (id);


--
-- Name: FeatureModels FeatureModels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureModels"
    ADD CONSTRAINT "FeatureModels_pkey" PRIMARY KEY (id);


--
-- Name: FileStorage FileStorage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FileStorage"
    ADD CONSTRAINT "FileStorage_pkey" PRIMARY KEY (id);


--
-- Name: FrameDatasetsProjects FrameDatasetsProjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasetsProjects"
    ADD CONSTRAINT "FrameDatasetsProjects_pkey" PRIMARY KEY (id);


--
-- Name: FrameDatasets FrameDatasets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasets"
    ADD CONSTRAINT "FrameDatasets_pkey" PRIMARY KEY (id);


--
-- Name: Frames Frames_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frames"
    ADD CONSTRAINT "Frames_pkey" PRIMARY KEY (id);


--
-- Name: HITsets HITsets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HITsets"
    ADD CONSTRAINT "HITsets_pkey" PRIMARY KEY (id);


--
-- Name: LabelClasses LabelClasses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelClasses"
    ADD CONSTRAINT "LabelClasses_pkey" PRIMARY KEY (id);


--
-- Name: LabelData LabelData_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelData"
    ADD CONSTRAINT "LabelData_pkey" PRIMARY KEY (id);


--
-- Name: LabelDatasets LabelDatasets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelDatasets"
    ADD CONSTRAINT "LabelDatasets_pkey" PRIMARY KEY (id);


--
-- Name: Licenses Licenses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Licenses"
    ADD CONSTRAINT "Licenses_pkey" PRIMARY KEY (id);


--
-- Name: Manufacturers Manufacturers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Manufacturers"
    ADD CONSTRAINT "Manufacturers_pkey" PRIMARY KEY (id);


--
-- Name: ObjectModelAlgorithmModel ObjectModelAlgorithmModel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelAlgorithmModel"
    ADD CONSTRAINT "ObjectModelAlgorithmModel_pkey" PRIMARY KEY (id);


--
-- Name: ObjectModelFeatureModel ObjectModelFeatureModel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelFeatureModel"
    ADD CONSTRAINT "ObjectModelFeatureModel_pkey" PRIMARY KEY (id);


--
-- Name: ObjectModelProject ObjectModelProject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelProject"
    ADD CONSTRAINT "ObjectModelProject_pkey" PRIMARY KEY (id);


--
-- Name: ObjectModels ObjectModels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModels"
    ADD CONSTRAINT "ObjectModels_pkey" PRIMARY KEY (id);


--
-- Name: OperationClassesSupportedLabelClasses OperationClassesSupportedLabelClasses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationClassesSupportedLabelClasses"
    ADD CONSTRAINT "OperationClassesSupportedLabelClasses_pkey" PRIMARY KEY (id);


--
-- Name: OperationClasses OperationClasses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationClasses"
    ADD CONSTRAINT "OperationClasses_pkey" PRIMARY KEY (id);


--
-- Name: OperationInstances OperationInstances_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationInstances"
    ADD CONSTRAINT "OperationInstances_pkey" PRIMARY KEY (id);


--
-- Name: Organizations Organizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Organizations"
    ADD CONSTRAINT "Organizations_pkey" PRIMARY KEY (id);


--
-- Name: OutsourcedInst OutsourcedInst_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OutsourcedInst"
    ADD CONSTRAINT "OutsourcedInst_pkey" PRIMARY KEY (id);


--
-- Name: ProjectEdgeNodes ProjectEdgeNodes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectEdgeNodes"
    ADD CONSTRAINT "ProjectEdgeNodes_pkey" PRIMARY KEY (id);


--
-- Name: ProjectInstructions ProjectInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_pkey" PRIMARY KEY (id);


--
-- Name: Projects Projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projects"
    ADD CONSTRAINT "Projects_pkey" PRIMARY KEY (id);


--
-- Name: Purchases Purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Purchases"
    ADD CONSTRAINT "Purchases_pkey" PRIMARY KEY (id);


--
-- Name: QualityMetricStruct QualityMetricStruct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QualityMetricStruct"
    ADD CONSTRAINT "QualityMetricStruct_pkey" PRIMARY KEY (id);


--
-- Name: QuestionXMLs QuestionXMLs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QuestionXMLs"
    ADD CONSTRAINT "QuestionXMLs_pkey" PRIMARY KEY (id);


--
-- Name: RecurrentCharges RecurrentCharges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RecurrentCharges"
    ADD CONSTRAINT "RecurrentCharges_pkey" PRIMARY KEY (id);


--
-- Name: RelevantData RelevantData_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_pkey" PRIMARY KEY (id);


--
-- Name: RelevantData RelevantData_uuid_fe14b732_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_uuid_fe14b732_uniq" UNIQUE (uuid);


--
-- Name: RoadConditions RoadConditions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RoadConditions"
    ADD CONSTRAINT "RoadConditions_pkey" PRIMARY KEY (id);


--
-- Name: TrainingInstructionsLabelDatasets TrainingInstructionsLabelDatasets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructionsLabelDatasets"
    ADD CONSTRAINT "TrainingInstructionsLabelDatasets_pkey" PRIMARY KEY (id);


--
-- Name: TrainingInstructions TrainingInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructions"
    ADD CONSTRAINT "TrainingInstructions_pkey" PRIMARY KEY (id);


--
-- Name: TypeCode TypeCode_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TypeCode"
    ADD CONSTRAINT "TypeCode_pkey" PRIMARY KEY (id);


--
-- Name: TypeCode TypeCode_value_83ec098e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TypeCode"
    ADD CONSTRAINT "TypeCode_value_83ec098e_uniq" UNIQUE (value);


--
-- Name: Users Users_email_93eda431_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_93eda431_uniq" UNIQUE (email);


--
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- Name: Users Users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_username_key" UNIQUE (username);


--
-- Name: ValidationInstructions ValidationInstructions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ValidationInstructions"
    ADD CONSTRAINT "ValidationInstructions_pkey" PRIMARY KEY (id);


--
-- Name: Weights Weights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Weights"
    ADD CONSTRAINT "Weights_pkey" PRIMARY KEY (id);


--
-- Name: Workers Workers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Workers"
    ADD CONSTRAINT "Workers_pkey" PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: DeviceImages recon_db_manager_deviceimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceImages"
    ADD CONSTRAINT recon_db_manager_deviceimage_pkey PRIMARY KEY (id);


--
-- Name: AlgorithmInstanceDeployedD_deployedDeviceInstanceId_c6c562c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstanceDeployedD_deployedDeviceInstanceId_c6c562c1" ON public."AlgorithmInstanceDeployedDevices" USING btree ("deployedDeviceInstanceId");


--
-- Name: AlgorithmInstanceDeployedDevices_algorithmInstanceId_37ca6367; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstanceDeployedDevices_algorithmInstanceId_37ca6367" ON public."AlgorithmInstanceDeployedDevices" USING btree ("algorithmInstanceId");


--
-- Name: AlgorithmInstanceObjectModel_algorithmInstanceId_08b65b52; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstanceObjectModel_algorithmInstanceId_08b65b52" ON public."AlgorithmInstanceObjectModel" USING btree ("algorithmInstanceId");


--
-- Name: AlgorithmInstanceObjectModel_objectModelId_a413348a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstanceObjectModel_objectModelId_a413348a" ON public."AlgorithmInstanceObjectModel" USING btree ("objectModelId");


--
-- Name: AlgorithmInstanceTrainingInst_algorithmInstanceId_c74bf0d6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstanceTrainingInst_algorithmInstanceId_c74bf0d6" ON public."AlgorithmInstanceTrainingInst" USING btree ("algorithmInstanceId");


--
-- Name: AlgorithmInstanceTrainingInst_trainingInstructionId_9ee173b8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstanceTrainingInst_trainingInstructionId_9ee173b8" ON public."AlgorithmInstanceTrainingInst" USING btree ("trainingInstructionId");


--
-- Name: AlgorithmInstances_algorithmModelId_812a2349; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstances_algorithmModelId_812a2349" ON public."AlgorithmInstances" USING btree ("algorithmModelId");


--
-- Name: AlgorithmInstances_projectId_a1901360; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstances_projectId_a1901360" ON public."AlgorithmInstances" USING btree ("projectId");


--
-- Name: AlgorithmInstances_weightId_479a600a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmInstances_weightId_479a600a" ON public."AlgorithmInstances" USING btree ("weightId");


--
-- Name: AlgorithmModels_architectureId_3b8b2a10; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmModels_architectureId_3b8b2a10" ON public."AlgorithmModels" USING btree ("architectureId");


--
-- Name: AlgorithmModels_initWeights_97fc8647; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AlgorithmModels_initWeights_97fc8647" ON public."AlgorithmModels" USING btree ("initWeights");


--
-- Name: AugmentationInstructions_frameDatasetId_06c5cfe8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AugmentationInstructions_frameDatasetId_06c5cfe8" ON public."AugmentationInstructions" USING btree ("frameDatasetId");


--
-- Name: AugmentationInstructions_projectId_422bc6a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "AugmentationInstructions_projectId_422bc6a4" ON public."AugmentationInstructions" USING btree ("projectId");


--
-- Name: DetectedObjects_edgeNodeId_8d45f531; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DetectedObjects_edgeNodeId_8d45f531" ON public."DetectedObjects" USING btree ("edgeNodeId");


--
-- Name: DetectedObjects_fileId_6ee54399; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DetectedObjects_fileId_6ee54399" ON public."DetectedObjects" USING btree ("fileId");


--
-- Name: DetectionsSummary_edgeNodeId_1bef6f49; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DetectionsSummary_edgeNodeId_1bef6f49" ON public."DetectionsSummary" USING btree ("edgeNodeId");


--
-- Name: DeviceClasses_deviceParameterId_a25c5229; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DeviceClasses_deviceParameterId_a25c5229" ON public."DeviceClasses" USING btree ("deviceParameterId");


--
-- Name: DeviceInstances_deviceClassId_4175d8f1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DeviceInstances_deviceClassId_4175d8f1" ON public."DeviceInstances" USING btree ("deviceClassId");


--
-- Name: DevicePurchases_deviceId_3a5d8103; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DevicePurchases_deviceId_3a5d8103" ON public."DevicePurchases" USING btree ("deviceId");


--
-- Name: DevicePurchases_orderId_018cdbfa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DevicePurchases_orderId_018cdbfa" ON public."DevicePurchases" USING btree ("orderId");


--
-- Name: Devices_categoryId_9734dab2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Devices_categoryId_9734dab2" ON public."Devices" USING btree ("categoryId");


--
-- Name: Devices_manufacturerId_190a216d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Devices_manufacturerId_190a216d" ON public."Devices" USING btree ("manufacturerId");


--
-- Name: DockerInstances_dockerModelId_c0e5906d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DockerInstances_dockerModelId_c0e5906d" ON public."DockerInstances" USING btree ("dockerModelId");


--
-- Name: DockerModelDeviceClasses_deviceClassId_7f5e0439; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DockerModelDeviceClasses_deviceClassId_7f5e0439" ON public."DockerModelDeviceClasses" USING btree ("deviceClassId");


--
-- Name: DockerModelDeviceClasses_dockerModelId_1fc8f861; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DockerModelDeviceClasses_dockerModelId_1fc8f861" ON public."DockerModelDeviceClasses" USING btree ("dockerModelId");


--
-- Name: DockerModelFeatureModel_dockerModelId_c9abbb63; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DockerModelFeatureModel_dockerModelId_c9abbb63" ON public."DockerModelFeatureModel" USING btree ("dockerModelId");


--
-- Name: DockerModelFeatureModel_featureModelId_88cb3c4c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "DockerModelFeatureModel_featureModelId_88cb3c4c" ON public."DockerModelFeatureModel" USING btree ("featureModelId");


--
-- Name: EcosystemsEdgeNodes_ecosystemId_ad643413; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EcosystemsEdgeNodes_ecosystemId_ad643413" ON public."EcosystemsEdgeNodes" USING btree ("ecosystemId");


--
-- Name: EcosystemsEdgeNodes_edgeNodeId_7f9d3833; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EcosystemsEdgeNodes_edgeNodeId_7f9d3833" ON public."EcosystemsEdgeNodes" USING btree ("edgeNodeId");


--
-- Name: Ecosystems_organizationId_28330099; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Ecosystems_organizationId_28330099" ON public."Ecosystems" USING btree ("organizationId");


--
-- Name: EdgeNodeDevices_deviceInstanceId_d6c01c28; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EdgeNodeDevices_deviceInstanceId_d6c01c28" ON public."EdgeNodeDevices" USING btree ("deviceInstanceId");


--
-- Name: EdgeNodeDevices_edgeNodeId_f5c57da1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EdgeNodeDevices_edgeNodeId_f5c57da1" ON public."EdgeNodeDevices" USING btree ("edgeNodeId");


--
-- Name: EdgeNodes_dockerInstanceId_b0d7c0a7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EdgeNodes_dockerInstanceId_b0d7c0a7" ON public."EdgeNodes" USING btree ("dockerInstanceId");


--
-- Name: EdgeNodes_organizationId_9ee23a70; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EdgeNodes_organizationId_9ee23a70" ON public."EdgeNodes" USING btree ("organizationId");


--
-- Name: EventsHistory_edgeNodeId_5490a224; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "EventsHistory_edgeNodeId_5490a224" ON public."EventsHistory" USING btree ("edgeNodeId");


--
-- Name: FeatureInstanceAlgorithm_algorithmId_461edd16; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureInstanceAlgorithm_algorithmId_461edd16" ON public."FeatureInstanceAlgorithm" USING btree ("algorithmId");


--
-- Name: FeatureInstanceAlgorithm_featureInstanceId_54668682; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureInstanceAlgorithm_featureInstanceId_54668682" ON public."FeatureInstanceAlgorithm" USING btree ("featureInstanceId");


--
-- Name: FeatureInstances_featureModelId_2acc714d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureInstances_featureModelId_2acc714d" ON public."FeatureInstances" USING btree ("featureModelId");


--
-- Name: FeatureInstances_parentECUclass_dde0fcdf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureInstances_parentECUclass_dde0fcdf" ON public."FeatureInstances" USING btree ("parentECUclass");


--
-- Name: FeatureInstances_projectId_c180e7f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureInstances_projectId_c180e7f4" ON public."FeatureInstances" USING btree ("projectId");


--
-- Name: FeatureModelAlgorithm_algorithmModelId_0b536e71; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureModelAlgorithm_algorithmModelId_0b536e71" ON public."FeatureModelAlgorithm" USING btree ("algorithmModelId");


--
-- Name: FeatureModelAlgorithm_featureModelId_f1b2874e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FeatureModelAlgorithm_featureModelId_f1b2874e" ON public."FeatureModelAlgorithm" USING btree ("featureModelId");


--
-- Name: FrameDatasetsProjects_frameDatasetId_e8269981; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FrameDatasetsProjects_frameDatasetId_e8269981" ON public."FrameDatasetsProjects" USING btree ("frameDatasetId");


--
-- Name: FrameDatasetsProjects_projectId_78fc58d8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FrameDatasetsProjects_projectId_78fc58d8" ON public."FrameDatasetsProjects" USING btree ("projectId");


--
-- Name: FrameDatasets_DataAcqInstructionsId_4a926a5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "FrameDatasets_DataAcqInstructionsId_4a926a5f" ON public."FrameDatasets" USING btree ("DataAcqInstructionsId");


--
-- Name: Frames_frameDatasetId_8b22b6d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Frames_frameDatasetId_8b22b6d3" ON public."Frames" USING btree ("frameDatasetId");


--
-- Name: HITsets_assocLabelsetId_e11ceaa0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HITsets_assocLabelsetId_e11ceaa0" ON public."HITsets" USING btree ("assocLabelsetId");


--
-- Name: HITsets_frameDatasetId_30f9eec9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HITsets_frameDatasetId_30f9eec9" ON public."HITsets" USING btree ("frameDatasetId");


--
-- Name: HITsets_questionXMLid_21251f13; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "HITsets_questionXMLid_21251f13" ON public."HITsets" USING btree ("questionXMLid");


--
-- Name: LabelData_labelDatasetId_fc9ceb35; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "LabelData_labelDatasetId_fc9ceb35" ON public."LabelData" USING btree ("labelDatasetId");


--
-- Name: LabelData_parentFrame_b5ac8646; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "LabelData_parentFrame_b5ac8646" ON public."LabelData" USING btree ("parentFrame");


--
-- Name: LabelDatasets_labelClassId_d1722ec5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "LabelDatasets_labelClassId_d1722ec5" ON public."LabelDatasets" USING btree ("labelClassId");


--
-- Name: LabelDatasets_parentAlgorithmModelId_9f060aca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "LabelDatasets_parentAlgorithmModelId_9f060aca" ON public."LabelDatasets" USING btree ("parentAlgorithmModelId");


--
-- Name: LabelDatasets_parentFrameDatasetId_4a8dd315; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "LabelDatasets_parentFrameDatasetId_4a8dd315" ON public."LabelDatasets" USING btree ("parentFrameDatasetId");


--
-- Name: Licenses_userId_c973a0e8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Licenses_userId_c973a0e8" ON public."Licenses" USING btree ("userId");


--
-- Name: ObjectModelAlgorithmModel_algorithmModelId_aa48e51b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ObjectModelAlgorithmModel_algorithmModelId_aa48e51b" ON public."ObjectModelAlgorithmModel" USING btree ("algorithmModelId");


--
-- Name: ObjectModelAlgorithmModel_objectModelId_6d60d413; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ObjectModelAlgorithmModel_objectModelId_6d60d413" ON public."ObjectModelAlgorithmModel" USING btree ("objectModelId");


--
-- Name: ObjectModelFeatureModel_featureModelId_17a47e4e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ObjectModelFeatureModel_featureModelId_17a47e4e" ON public."ObjectModelFeatureModel" USING btree ("featureModelId");


--
-- Name: ObjectModelFeatureModel_objectModelId_30e0c1ab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ObjectModelFeatureModel_objectModelId_30e0c1ab" ON public."ObjectModelFeatureModel" USING btree ("objectModelId");


--
-- Name: ObjectModelProject_objectModelId_e6270770; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ObjectModelProject_objectModelId_e6270770" ON public."ObjectModelProject" USING btree ("objectModelId");


--
-- Name: ObjectModelProject_projectId_ba150b15; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ObjectModelProject_projectId_ba150b15" ON public."ObjectModelProject" USING btree ("projectId");


--
-- Name: OperationClassesSupportedLabelClasses_labelClassId_d9abb51c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OperationClassesSupportedLabelClasses_labelClassId_d9abb51c" ON public."OperationClassesSupportedLabelClasses" USING btree ("labelClassId");


--
-- Name: OperationClassesSupportedLabelClasses_operationClassId_1eaf8b2e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OperationClassesSupportedLabelClasses_operationClassId_1eaf8b2e" ON public."OperationClassesSupportedLabelClasses" USING btree ("operationClassId");


--
-- Name: OperationInstances_frameDatasetId_bf00fa80; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OperationInstances_frameDatasetId_bf00fa80" ON public."OperationInstances" USING btree ("frameDatasetId");


--
-- Name: OperationInstances_operationClassId_3b778f3d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OperationInstances_operationClassId_3b778f3d" ON public."OperationInstances" USING btree ("operationClassId");


--
-- Name: OutsourcedInst_annotInstId_3258119d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OutsourcedInst_annotInstId_3258119d" ON public."OutsourcedInst" USING btree ("annotInstId");


--
-- Name: OutsourcedInst_frameDatasetId_a60fd59f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OutsourcedInst_frameDatasetId_a60fd59f" ON public."OutsourcedInst" USING btree ("frameDatasetId");


--
-- Name: OutsourcedInst_questionXMLid_bf4b9751; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "OutsourcedInst_questionXMLid_bf4b9751" ON public."OutsourcedInst" USING btree ("questionXMLid");


--
-- Name: ProjectEdgeNodes_edgeNodeId_190a005d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectEdgeNodes_edgeNodeId_190a005d" ON public."ProjectEdgeNodes" USING btree ("edgeNodeId");


--
-- Name: ProjectEdgeNodes_projectId_691a4a2b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectEdgeNodes_projectId_691a4a2b" ON public."ProjectEdgeNodes" USING btree ("projectId");


--
-- Name: ProjectInstructions_annotInstId_dd119dea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectInstructions_annotInstId_dd119dea" ON public."ProjectInstructions" USING btree ("annotInstId");


--
-- Name: ProjectInstructions_augmentInstId_76598f7f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectInstructions_augmentInstId_76598f7f" ON public."ProjectInstructions" USING btree ("augmentInstId");


--
-- Name: ProjectInstructions_dataAcqInstId_966befae; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectInstructions_dataAcqInstId_966befae" ON public."ProjectInstructions" USING btree ("dataAcqInstId");


--
-- Name: ProjectInstructions_projectId_5f3a8bc3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectInstructions_projectId_5f3a8bc3" ON public."ProjectInstructions" USING btree ("projectId");


--
-- Name: ProjectInstructions_trainingInstrId_9c044f11; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectInstructions_trainingInstrId_9c044f11" ON public."ProjectInstructions" USING btree ("trainingInstrId");


--
-- Name: ProjectInstructions_validationInstrId_52c3aa32; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "ProjectInstructions_validationInstrId_52c3aa32" ON public."ProjectInstructions" USING btree ("validationInstrId");


--
-- Name: Projects_ecosystemId_c89985e3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Projects_ecosystemId_c89985e3" ON public."Projects" USING btree ("ecosystemId");


--
-- Name: Projects_featuremodelId_4acb5542; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Projects_featuremodelId_4acb5542" ON public."Projects" USING btree ("featuremodelId");


--
-- Name: Projects_organizationId_e13b3813; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Projects_organizationId_e13b3813" ON public."Projects" USING btree ("organizationId");


--
-- Name: Purchases_organizationId_60152fc6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Purchases_organizationId_60152fc6" ON public."Purchases" USING btree ("organizationId");


--
-- Name: QuestionXMLs_labelClassId_368ad4d1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "QuestionXMLs_labelClassId_368ad4d1" ON public."QuestionXMLs" USING btree ("labelClassId");


--
-- Name: RecurrentCharges_organizationId_ea145764; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RecurrentCharges_organizationId_ea145764" ON public."RecurrentCharges" USING btree ("organizationId");


--
-- Name: RelevantData_ambientWeatherCondition_da43dbc2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_ambientWeatherCondition_da43dbc2" ON public."RelevantData" USING btree ("ambientWeatherCondition");


--
-- Name: RelevantData_ambientWeatherCondition_da43dbc2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_ambientWeatherCondition_da43dbc2_like" ON public."RelevantData" USING btree ("ambientWeatherCondition" varchar_pattern_ops);


--
-- Name: RelevantData_cadFileTag_5170c280; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_cadFileTag_5170c280" ON public."RelevantData" USING btree ("cadFileTag");


--
-- Name: RelevantData_deviceInstanceId_a2862ba9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_deviceInstanceId_a2862ba9" ON public."RelevantData" USING btree ("deviceInstanceId");


--
-- Name: RelevantData_edgeNodeId_c69a3c7b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_edgeNodeId_c69a3c7b" ON public."RelevantData" USING btree ("edgeNodeId");


--
-- Name: RelevantData_eventType_490c94b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_eventType_490c94b2" ON public."RelevantData" USING btree ("eventType");


--
-- Name: RelevantData_eventType_490c94b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_eventType_490c94b2_like" ON public."RelevantData" USING btree ("eventType" varchar_pattern_ops);


--
-- Name: RelevantData_face_259dc2a1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_face_259dc2a1" ON public."RelevantData" USING btree (face);


--
-- Name: RelevantData_featureModelId_8f88e76e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_featureModelId_8f88e76e" ON public."RelevantData" USING btree ("featureModelId");


--
-- Name: RelevantData_licensePlate_dee89b0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_licensePlate_dee89b0e" ON public."RelevantData" USING btree ("licensePlate");


--
-- Name: RelevantData_objectClass_38c0bc9d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_objectClass_38c0bc9d" ON public."RelevantData" USING btree ("objectClass");


--
-- Name: RelevantData_objectClass_38c0bc9d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_objectClass_38c0bc9d_like" ON public."RelevantData" USING btree ("objectClass" varchar_pattern_ops);


--
-- Name: RelevantData_objectModelId_53c82144; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_objectModelId_53c82144" ON public."RelevantData" USING btree ("objectModelId");


--
-- Name: RelevantData_projectId_64f4a338; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_projectId_64f4a338" ON public."RelevantData" USING btree ("projectId");


--
-- Name: RelevantData_roadWeatherCondition_9b12a596; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_roadWeatherCondition_9b12a596" ON public."RelevantData" USING btree ("roadWeatherCondition");


--
-- Name: RelevantData_roadWeatherCondition_9b12a596_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_roadWeatherCondition_9b12a596_like" ON public."RelevantData" USING btree ("roadWeatherCondition" varchar_pattern_ops);


--
-- Name: RelevantData_taggedDataId_1832c8e8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_taggedDataId_1832c8e8" ON public."RelevantData" USING btree ("taggedDataId");


--
-- Name: RelevantData_vehicleClassification_0a8e9bc9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_vehicleClassification_0a8e9bc9" ON public."RelevantData" USING btree ("vehicleClassification");


--
-- Name: RelevantData_vehicleClassification_0a8e9bc9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RelevantData_vehicleClassification_0a8e9bc9_like" ON public."RelevantData" USING btree ("vehicleClassification" varchar_pattern_ops);


--
-- Name: RoadConditions_edgeNodeId_3b89422e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RoadConditions_edgeNodeId_3b89422e" ON public."RoadConditions" USING btree ("edgeNodeId");


--
-- Name: TrainingInstructionsLabelDatasets_TrainingInstId_74880888; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TrainingInstructionsLabelDatasets_TrainingInstId_74880888" ON public."TrainingInstructionsLabelDatasets" USING btree ("TrainingInstId");


--
-- Name: TrainingInstructionsLabelDatasets_labelDatasetId_516be3ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TrainingInstructionsLabelDatasets_labelDatasetId_516be3ef" ON public."TrainingInstructionsLabelDatasets" USING btree ("labelDatasetId");


--
-- Name: TrainingInstructions_dataSplitInst_f2f86e68; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TrainingInstructions_dataSplitInst_f2f86e68" ON public."TrainingInstructions" USING btree ("dataSplitInst");


--
-- Name: TypeCode_value_83ec098e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "TypeCode_value_83ec098e_like" ON public."TypeCode" USING btree (value varchar_pattern_ops);


--
-- Name: Users_email_93eda431_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Users_email_93eda431_like" ON public."Users" USING btree (email varchar_pattern_ops);


--
-- Name: Users_organizationId_64318c7f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Users_organizationId_64318c7f" ON public."Users" USING btree ("organizationId");


--
-- Name: Users_username_c7f288a1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Users_username_c7f288a1_like" ON public."Users" USING btree (username varchar_pattern_ops);


--
-- Name: recon_db_manager_deviceimage_device_id_55ebffb5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX recon_db_manager_deviceimage_device_id_55ebffb5 ON public."DeviceImages" USING btree (device_id);


--
-- Name: AlgorithmInstanceDeployedDevices AlgorithmInstanceDep_algorithmInstanceId_37ca6367_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceDeployedDevices"
    ADD CONSTRAINT "AlgorithmInstanceDep_algorithmInstanceId_37ca6367_fk_Algorithm" FOREIGN KEY ("algorithmInstanceId") REFERENCES public."AlgorithmInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstanceDeployedDevices AlgorithmInstanceDep_deployedDeviceInstan_c6c562c1_fk_DeviceIns; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceDeployedDevices"
    ADD CONSTRAINT "AlgorithmInstanceDep_deployedDeviceInstan_c6c562c1_fk_DeviceIns" FOREIGN KEY ("deployedDeviceInstanceId") REFERENCES public."DeviceInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstanceObjectModel AlgorithmInstanceObj_algorithmInstanceId_08b65b52_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceObjectModel"
    ADD CONSTRAINT "AlgorithmInstanceObj_algorithmInstanceId_08b65b52_fk_Algorithm" FOREIGN KEY ("algorithmInstanceId") REFERENCES public."AlgorithmInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstanceObjectModel AlgorithmInstanceObj_objectModelId_a413348a_fk_ObjectMod; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceObjectModel"
    ADD CONSTRAINT "AlgorithmInstanceObj_objectModelId_a413348a_fk_ObjectMod" FOREIGN KEY ("objectModelId") REFERENCES public."ObjectModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstanceTrainingInst AlgorithmInstanceTra_algorithmInstanceId_c74bf0d6_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceTrainingInst"
    ADD CONSTRAINT "AlgorithmInstanceTra_algorithmInstanceId_c74bf0d6_fk_Algorithm" FOREIGN KEY ("algorithmInstanceId") REFERENCES public."AlgorithmInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstanceTrainingInst AlgorithmInstanceTra_trainingInstructionI_9ee173b8_fk_TrainingI; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstanceTrainingInst"
    ADD CONSTRAINT "AlgorithmInstanceTra_trainingInstructionI_9ee173b8_fk_TrainingI" FOREIGN KEY ("trainingInstructionId") REFERENCES public."TrainingInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstances AlgorithmInstances_algorithmModelId_812a2349_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstances"
    ADD CONSTRAINT "AlgorithmInstances_algorithmModelId_812a2349_fk_Algorithm" FOREIGN KEY ("algorithmModelId") REFERENCES public."AlgorithmModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstances AlgorithmInstances_projectId_a1901360_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstances"
    ADD CONSTRAINT "AlgorithmInstances_projectId_a1901360_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmInstances AlgorithmInstances_weightId_479a600a_fk_Weights_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmInstances"
    ADD CONSTRAINT "AlgorithmInstances_weightId_479a600a_fk_Weights_id" FOREIGN KEY ("weightId") REFERENCES public."Weights"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmModels AlgorithmModels_architectureId_3b8b2a10_fk_Architectures_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmModels"
    ADD CONSTRAINT "AlgorithmModels_architectureId_3b8b2a10_fk_Architectures_id" FOREIGN KEY ("architectureId") REFERENCES public."Architectures"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AlgorithmModels AlgorithmModels_initWeights_97fc8647_fk_Weights_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AlgorithmModels"
    ADD CONSTRAINT "AlgorithmModels_initWeights_97fc8647_fk_Weights_id" FOREIGN KEY ("initWeights") REFERENCES public."Weights"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AugmentationInstructions AugmentationInstruct_frameDatasetId_06c5cfe8_fk_FrameData; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AugmentationInstructions"
    ADD CONSTRAINT "AugmentationInstruct_frameDatasetId_06c5cfe8_fk_FrameData" FOREIGN KEY ("frameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: AugmentationInstructions AugmentationInstructions_projectId_422bc6a4_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AugmentationInstructions"
    ADD CONSTRAINT "AugmentationInstructions_projectId_422bc6a4_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DetectedObjects DetectedObjects_edgeNodeId_8d45f531_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectedObjects"
    ADD CONSTRAINT "DetectedObjects_edgeNodeId_8d45f531_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DetectedObjects DetectedObjects_fileId_6ee54399_fk_FileStorage_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectedObjects"
    ADD CONSTRAINT "DetectedObjects_fileId_6ee54399_fk_FileStorage_id" FOREIGN KEY ("fileId") REFERENCES public."FileStorage"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DetectionsSummary DetectionsSummary_edgeNodeId_1bef6f49_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DetectionsSummary"
    ADD CONSTRAINT "DetectionsSummary_edgeNodeId_1bef6f49_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DeviceClasses DeviceClasses_deviceParameterId_a25c5229_fk_DeviceParameters_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceClasses"
    ADD CONSTRAINT "DeviceClasses_deviceParameterId_a25c5229_fk_DeviceParameters_id" FOREIGN KEY ("deviceParameterId") REFERENCES public."DeviceParameters"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DeviceImages DeviceImages_device_id_ee33261e_fk_Devices_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceImages"
    ADD CONSTRAINT "DeviceImages_device_id_ee33261e_fk_Devices_id" FOREIGN KEY (device_id) REFERENCES public."Devices"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DeviceInstances DeviceInstances_deviceClassId_4175d8f1_fk_DeviceClasses_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DeviceInstances"
    ADD CONSTRAINT "DeviceInstances_deviceClassId_4175d8f1_fk_DeviceClasses_id" FOREIGN KEY ("deviceClassId") REFERENCES public."DeviceClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DevicePurchases DevicePurchases_deviceId_3a5d8103_fk_Devices_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DevicePurchases"
    ADD CONSTRAINT "DevicePurchases_deviceId_3a5d8103_fk_Devices_id" FOREIGN KEY ("deviceId") REFERENCES public."Devices"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DevicePurchases DevicePurchases_orderId_018cdbfa_fk_Purchases_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DevicePurchases"
    ADD CONSTRAINT "DevicePurchases_orderId_018cdbfa_fk_Purchases_id" FOREIGN KEY ("orderId") REFERENCES public."Purchases"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Devices Devices_categoryId_9734dab2_fk_Categories_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "Devices_categoryId_9734dab2_fk_Categories_id" FOREIGN KEY ("categoryId") REFERENCES public."Categories"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Devices Devices_manufacturerId_190a216d_fk_Manufacturers_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Devices"
    ADD CONSTRAINT "Devices_manufacturerId_190a216d_fk_Manufacturers_id" FOREIGN KEY ("manufacturerId") REFERENCES public."Manufacturers"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DockerInstances DockerInstances_dockerModelId_c0e5906d_fk_DockerModels_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerInstances"
    ADD CONSTRAINT "DockerInstances_dockerModelId_c0e5906d_fk_DockerModels_id" FOREIGN KEY ("dockerModelId") REFERENCES public."DockerModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DockerModelDeviceClasses DockerModelDeviceCla_deviceClassId_7f5e0439_fk_DeviceCla; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelDeviceClasses"
    ADD CONSTRAINT "DockerModelDeviceCla_deviceClassId_7f5e0439_fk_DeviceCla" FOREIGN KEY ("deviceClassId") REFERENCES public."DeviceClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DockerModelDeviceClasses DockerModelDeviceCla_dockerModelId_1fc8f861_fk_DockerMod; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelDeviceClasses"
    ADD CONSTRAINT "DockerModelDeviceCla_dockerModelId_1fc8f861_fk_DockerMod" FOREIGN KEY ("dockerModelId") REFERENCES public."DockerModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DockerModelFeatureModel DockerModelFeatureMo_dockerModelId_c9abbb63_fk_DockerMod; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelFeatureModel"
    ADD CONSTRAINT "DockerModelFeatureMo_dockerModelId_c9abbb63_fk_DockerMod" FOREIGN KEY ("dockerModelId") REFERENCES public."DockerModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DockerModelFeatureModel DockerModelFeatureMo_featureModelId_88cb3c4c_fk_FeatureMo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."DockerModelFeatureModel"
    ADD CONSTRAINT "DockerModelFeatureMo_featureModelId_88cb3c4c_fk_FeatureMo" FOREIGN KEY ("featureModelId") REFERENCES public."FeatureModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EcosystemsEdgeNodes EcosystemsEdgeNodes_ecosystemId_ad643413_fk_Ecosystems_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EcosystemsEdgeNodes"
    ADD CONSTRAINT "EcosystemsEdgeNodes_ecosystemId_ad643413_fk_Ecosystems_id" FOREIGN KEY ("ecosystemId") REFERENCES public."Ecosystems"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EcosystemsEdgeNodes EcosystemsEdgeNodes_edgeNodeId_7f9d3833_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EcosystemsEdgeNodes"
    ADD CONSTRAINT "EcosystemsEdgeNodes_edgeNodeId_7f9d3833_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Ecosystems Ecosystems_organizationId_28330099_fk_Organizations_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ecosystems"
    ADD CONSTRAINT "Ecosystems_organizationId_28330099_fk_Organizations_id" FOREIGN KEY ("organizationId") REFERENCES public."Organizations"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EdgeNodeDevices EdgeNodeDevices_deviceInstanceId_d6c01c28_fk_DeviceInstances_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodeDevices"
    ADD CONSTRAINT "EdgeNodeDevices_deviceInstanceId_d6c01c28_fk_DeviceInstances_id" FOREIGN KEY ("deviceInstanceId") REFERENCES public."DeviceInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EdgeNodeDevices EdgeNodeDevices_edgeNodeId_f5c57da1_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodeDevices"
    ADD CONSTRAINT "EdgeNodeDevices_edgeNodeId_f5c57da1_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EdgeNodes EdgeNodes_dockerInstanceId_b0d7c0a7_fk_DockerInstances_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodes"
    ADD CONSTRAINT "EdgeNodes_dockerInstanceId_b0d7c0a7_fk_DockerInstances_id" FOREIGN KEY ("dockerInstanceId") REFERENCES public."DockerInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EdgeNodes EdgeNodes_organizationId_9ee23a70_fk_Organizations_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EdgeNodes"
    ADD CONSTRAINT "EdgeNodes_organizationId_9ee23a70_fk_Organizations_id" FOREIGN KEY ("organizationId") REFERENCES public."Organizations"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: EventsHistory EventsHistory_edgeNodeId_5490a224_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EventsHistory"
    ADD CONSTRAINT "EventsHistory_edgeNodeId_5490a224_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureInstanceAlgorithm FeatureInstanceAlgor_algorithmId_461edd16_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstanceAlgorithm"
    ADD CONSTRAINT "FeatureInstanceAlgor_algorithmId_461edd16_fk_Algorithm" FOREIGN KEY ("algorithmId") REFERENCES public."AlgorithmInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureInstanceAlgorithm FeatureInstanceAlgor_featureInstanceId_54668682_fk_FeatureIn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstanceAlgorithm"
    ADD CONSTRAINT "FeatureInstanceAlgor_featureInstanceId_54668682_fk_FeatureIn" FOREIGN KEY ("featureInstanceId") REFERENCES public."FeatureInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureInstances FeatureInstances_featureModelId_2acc714d_fk_FeatureModels_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstances"
    ADD CONSTRAINT "FeatureInstances_featureModelId_2acc714d_fk_FeatureModels_id" FOREIGN KEY ("featureModelId") REFERENCES public."FeatureModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureInstances FeatureInstances_parentECUclass_dde0fcdf_fk_DeviceClasses_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstances"
    ADD CONSTRAINT "FeatureInstances_parentECUclass_dde0fcdf_fk_DeviceClasses_id" FOREIGN KEY ("parentECUclass") REFERENCES public."DeviceClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureInstances FeatureInstances_projectId_c180e7f4_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureInstances"
    ADD CONSTRAINT "FeatureInstances_projectId_c180e7f4_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureModelAlgorithm FeatureModelAlgorith_algorithmModelId_0b536e71_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureModelAlgorithm"
    ADD CONSTRAINT "FeatureModelAlgorith_algorithmModelId_0b536e71_fk_Algorithm" FOREIGN KEY ("algorithmModelId") REFERENCES public."AlgorithmModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FeatureModelAlgorithm FeatureModelAlgorith_featureModelId_f1b2874e_fk_FeatureMo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FeatureModelAlgorithm"
    ADD CONSTRAINT "FeatureModelAlgorith_featureModelId_f1b2874e_fk_FeatureMo" FOREIGN KEY ("featureModelId") REFERENCES public."FeatureModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FrameDatasetsProjects FrameDatasetsProject_frameDatasetId_e8269981_fk_FrameData; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasetsProjects"
    ADD CONSTRAINT "FrameDatasetsProject_frameDatasetId_e8269981_fk_FrameData" FOREIGN KEY ("frameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FrameDatasetsProjects FrameDatasetsProjects_projectId_78fc58d8_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasetsProjects"
    ADD CONSTRAINT "FrameDatasetsProjects_projectId_78fc58d8_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: FrameDatasets FrameDatasets_DataAcqInstructionsI_4a926a5f_fk_DataAcqIn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."FrameDatasets"
    ADD CONSTRAINT "FrameDatasets_DataAcqInstructionsI_4a926a5f_fk_DataAcqIn" FOREIGN KEY ("DataAcqInstructionsId") REFERENCES public."DataAcqInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Frames Frames_frameDatasetId_8b22b6d3_fk_FrameDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Frames"
    ADD CONSTRAINT "Frames_frameDatasetId_8b22b6d3_fk_FrameDatasets_id" FOREIGN KEY ("frameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HITsets HITsets_assocLabelsetId_e11ceaa0_fk_LabelDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HITsets"
    ADD CONSTRAINT "HITsets_assocLabelsetId_e11ceaa0_fk_LabelDatasets_id" FOREIGN KEY ("assocLabelsetId") REFERENCES public."LabelDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HITsets HITsets_frameDatasetId_30f9eec9_fk_FrameDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HITsets"
    ADD CONSTRAINT "HITsets_frameDatasetId_30f9eec9_fk_FrameDatasets_id" FOREIGN KEY ("frameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: HITsets HITsets_questionXMLid_21251f13_fk_QuestionXMLs_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."HITsets"
    ADD CONSTRAINT "HITsets_questionXMLid_21251f13_fk_QuestionXMLs_id" FOREIGN KEY ("questionXMLid") REFERENCES public."QuestionXMLs"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LabelData LabelData_labelDatasetId_fc9ceb35_fk_LabelDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelData"
    ADD CONSTRAINT "LabelData_labelDatasetId_fc9ceb35_fk_LabelDatasets_id" FOREIGN KEY ("labelDatasetId") REFERENCES public."LabelDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LabelData LabelData_parentFrame_b5ac8646_fk_Frames_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelData"
    ADD CONSTRAINT "LabelData_parentFrame_b5ac8646_fk_Frames_id" FOREIGN KEY ("parentFrame") REFERENCES public."Frames"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LabelDatasets LabelDatasets_labelClassId_d1722ec5_fk_LabelClasses_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelDatasets"
    ADD CONSTRAINT "LabelDatasets_labelClassId_d1722ec5_fk_LabelClasses_id" FOREIGN KEY ("labelClassId") REFERENCES public."LabelClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LabelDatasets LabelDatasets_parentAlgorithmModel_9f060aca_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelDatasets"
    ADD CONSTRAINT "LabelDatasets_parentAlgorithmModel_9f060aca_fk_Algorithm" FOREIGN KEY ("parentAlgorithmModelId") REFERENCES public."AlgorithmModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: LabelDatasets LabelDatasets_parentFrameDatasetId_4a8dd315_fk_FrameDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."LabelDatasets"
    ADD CONSTRAINT "LabelDatasets_parentFrameDatasetId_4a8dd315_fk_FrameDatasets_id" FOREIGN KEY ("parentFrameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Licenses Licenses_userId_c973a0e8_fk_Users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Licenses"
    ADD CONSTRAINT "Licenses_userId_c973a0e8_fk_Users_id" FOREIGN KEY ("userId") REFERENCES public."Users"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ObjectModelAlgorithmModel ObjectModelAlgorithm_algorithmModelId_aa48e51b_fk_Algorithm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelAlgorithmModel"
    ADD CONSTRAINT "ObjectModelAlgorithm_algorithmModelId_aa48e51b_fk_Algorithm" FOREIGN KEY ("algorithmModelId") REFERENCES public."AlgorithmModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ObjectModelAlgorithmModel ObjectModelAlgorithm_objectModelId_6d60d413_fk_ObjectMod; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelAlgorithmModel"
    ADD CONSTRAINT "ObjectModelAlgorithm_objectModelId_6d60d413_fk_ObjectMod" FOREIGN KEY ("objectModelId") REFERENCES public."ObjectModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ObjectModelFeatureModel ObjectModelFeatureMo_featureModelId_17a47e4e_fk_FeatureMo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelFeatureModel"
    ADD CONSTRAINT "ObjectModelFeatureMo_featureModelId_17a47e4e_fk_FeatureMo" FOREIGN KEY ("featureModelId") REFERENCES public."FeatureModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ObjectModelFeatureModel ObjectModelFeatureMo_objectModelId_30e0c1ab_fk_ObjectMod; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelFeatureModel"
    ADD CONSTRAINT "ObjectModelFeatureMo_objectModelId_30e0c1ab_fk_ObjectMod" FOREIGN KEY ("objectModelId") REFERENCES public."ObjectModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ObjectModelProject ObjectModelProject_objectModelId_e6270770_fk_ObjectModels_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelProject"
    ADD CONSTRAINT "ObjectModelProject_objectModelId_e6270770_fk_ObjectModels_id" FOREIGN KEY ("objectModelId") REFERENCES public."ObjectModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ObjectModelProject ObjectModelProject_projectId_ba150b15_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ObjectModelProject"
    ADD CONSTRAINT "ObjectModelProject_projectId_ba150b15_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OperationClassesSupportedLabelClasses OperationClassesSupp_labelClassId_d9abb51c_fk_LabelClas; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationClassesSupportedLabelClasses"
    ADD CONSTRAINT "OperationClassesSupp_labelClassId_d9abb51c_fk_LabelClas" FOREIGN KEY ("labelClassId") REFERENCES public."LabelClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OperationClassesSupportedLabelClasses OperationClassesSupp_operationClassId_1eaf8b2e_fk_Operation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationClassesSupportedLabelClasses"
    ADD CONSTRAINT "OperationClassesSupp_operationClassId_1eaf8b2e_fk_Operation" FOREIGN KEY ("operationClassId") REFERENCES public."OperationClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OperationInstances OperationInstances_frameDatasetId_bf00fa80_fk_FrameDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationInstances"
    ADD CONSTRAINT "OperationInstances_frameDatasetId_bf00fa80_fk_FrameDatasets_id" FOREIGN KEY ("frameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OperationInstances OperationInstances_operationClassId_3b778f3d_fk_Operation; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OperationInstances"
    ADD CONSTRAINT "OperationInstances_operationClassId_3b778f3d_fk_Operation" FOREIGN KEY ("operationClassId") REFERENCES public."OperationClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OutsourcedInst OutsourcedInst_annotInstId_3258119d_fk_Annotatio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OutsourcedInst"
    ADD CONSTRAINT "OutsourcedInst_annotInstId_3258119d_fk_Annotatio" FOREIGN KEY ("annotInstId") REFERENCES public."AnnotationInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OutsourcedInst OutsourcedInst_frameDatasetId_a60fd59f_fk_FrameDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OutsourcedInst"
    ADD CONSTRAINT "OutsourcedInst_frameDatasetId_a60fd59f_fk_FrameDatasets_id" FOREIGN KEY ("frameDatasetId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: OutsourcedInst OutsourcedInst_questionXMLid_bf4b9751_fk_QuestionXMLs_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."OutsourcedInst"
    ADD CONSTRAINT "OutsourcedInst_questionXMLid_bf4b9751_fk_QuestionXMLs_id" FOREIGN KEY ("questionXMLid") REFERENCES public."QuestionXMLs"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectEdgeNodes ProjectEdgeNodes_edgeNodeId_190a005d_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectEdgeNodes"
    ADD CONSTRAINT "ProjectEdgeNodes_edgeNodeId_190a005d_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectEdgeNodes ProjectEdgeNodes_projectId_691a4a2b_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectEdgeNodes"
    ADD CONSTRAINT "ProjectEdgeNodes_projectId_691a4a2b_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectInstructions ProjectInstructions_annotInstId_dd119dea_fk_Annotatio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_annotInstId_dd119dea_fk_Annotatio" FOREIGN KEY ("annotInstId") REFERENCES public."AnnotationInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectInstructions ProjectInstructions_augmentInstId_76598f7f_fk_Augmentat; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_augmentInstId_76598f7f_fk_Augmentat" FOREIGN KEY ("augmentInstId") REFERENCES public."AugmentationInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectInstructions ProjectInstructions_dataAcqInstId_966befae_fk_DataAcqIn; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_dataAcqInstId_966befae_fk_DataAcqIn" FOREIGN KEY ("dataAcqInstId") REFERENCES public."DataAcqInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectInstructions ProjectInstructions_projectId_5f3a8bc3_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_projectId_5f3a8bc3_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectInstructions ProjectInstructions_trainingInstrId_9c044f11_fk_TrainingI; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_trainingInstrId_9c044f11_fk_TrainingI" FOREIGN KEY ("trainingInstrId") REFERENCES public."TrainingInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ProjectInstructions ProjectInstructions_validationInstrId_52c3aa32_fk_Validatio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ProjectInstructions"
    ADD CONSTRAINT "ProjectInstructions_validationInstrId_52c3aa32_fk_Validatio" FOREIGN KEY ("validationInstrId") REFERENCES public."ValidationInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Projects Projects_ecosystemId_c89985e3_fk_Ecosystems_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projects"
    ADD CONSTRAINT "Projects_ecosystemId_c89985e3_fk_Ecosystems_id" FOREIGN KEY ("ecosystemId") REFERENCES public."Ecosystems"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Projects Projects_featuremodelId_4acb5542_fk_FeatureModels_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projects"
    ADD CONSTRAINT "Projects_featuremodelId_4acb5542_fk_FeatureModels_id" FOREIGN KEY ("featuremodelId") REFERENCES public."FeatureModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Projects Projects_organizationId_e13b3813_fk_Organizations_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projects"
    ADD CONSTRAINT "Projects_organizationId_e13b3813_fk_Organizations_id" FOREIGN KEY ("organizationId") REFERENCES public."Organizations"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Purchases Purchases_organizationId_60152fc6_fk_Organizations_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Purchases"
    ADD CONSTRAINT "Purchases_organizationId_60152fc6_fk_Organizations_id" FOREIGN KEY ("organizationId") REFERENCES public."Organizations"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: QuestionXMLs QuestionXMLs_labelClassId_368ad4d1_fk_LabelClasses_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."QuestionXMLs"
    ADD CONSTRAINT "QuestionXMLs_labelClassId_368ad4d1_fk_LabelClasses_id" FOREIGN KEY ("labelClassId") REFERENCES public."LabelClasses"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RecurrentCharges RecurrentCharges_organizationId_ea145764_fk_Organizations_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RecurrentCharges"
    ADD CONSTRAINT "RecurrentCharges_organizationId_ea145764_fk_Organizations_id" FOREIGN KEY ("organizationId") REFERENCES public."Organizations"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_ambientWeatherCondition_da43dbc2_fk_TypeCode_value; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_ambientWeatherCondition_da43dbc2_fk_TypeCode_value" FOREIGN KEY ("ambientWeatherCondition") REFERENCES public."TypeCode"(value) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_cadFileTag_5170c280_fk_FileStorage_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_cadFileTag_5170c280_fk_FileStorage_id" FOREIGN KEY ("cadFileTag") REFERENCES public."FileStorage"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_deviceInstanceId_a2862ba9_fk_DeviceInstances_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_deviceInstanceId_a2862ba9_fk_DeviceInstances_id" FOREIGN KEY ("deviceInstanceId") REFERENCES public."DeviceInstances"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_edgeNodeId_c69a3c7b_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_edgeNodeId_c69a3c7b_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_eventType_490c94b2_fk_TypeCode_value; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_eventType_490c94b2_fk_TypeCode_value" FOREIGN KEY ("eventType") REFERENCES public."TypeCode"(value) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_face_259dc2a1_fk_FileStorage_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_face_259dc2a1_fk_FileStorage_id" FOREIGN KEY (face) REFERENCES public."FileStorage"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_featureModelId_8f88e76e_fk_FeatureModels_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_featureModelId_8f88e76e_fk_FeatureModels_id" FOREIGN KEY ("featureModelId") REFERENCES public."FeatureModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_licensePlate_dee89b0e_fk_FileStorage_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_licensePlate_dee89b0e_fk_FileStorage_id" FOREIGN KEY ("licensePlate") REFERENCES public."FileStorage"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_objectClass_38c0bc9d_fk_TypeCode_value; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_objectClass_38c0bc9d_fk_TypeCode_value" FOREIGN KEY ("objectClass") REFERENCES public."TypeCode"(value) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_objectModelId_53c82144_fk_ObjectModels_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_objectModelId_53c82144_fk_ObjectModels_id" FOREIGN KEY ("objectModelId") REFERENCES public."ObjectModels"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_projectId_64f4a338_fk_Projects_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_projectId_64f4a338_fk_Projects_id" FOREIGN KEY ("projectId") REFERENCES public."Projects"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_roadWeatherCondition_9b12a596_fk_TypeCode_value; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_roadWeatherCondition_9b12a596_fk_TypeCode_value" FOREIGN KEY ("roadWeatherCondition") REFERENCES public."TypeCode"(value) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_taggedDataId_1832c8e8_fk_FrameDatasets_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_taggedDataId_1832c8e8_fk_FrameDatasets_id" FOREIGN KEY ("taggedDataId") REFERENCES public."FrameDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RelevantData RelevantData_vehicleClassification_0a8e9bc9_fk_TypeCode_value; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RelevantData"
    ADD CONSTRAINT "RelevantData_vehicleClassification_0a8e9bc9_fk_TypeCode_value" FOREIGN KEY ("vehicleClassification") REFERENCES public."TypeCode"(value) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: RoadConditions RoadConditions_edgeNodeId_3b89422e_fk_EdgeNodes_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RoadConditions"
    ADD CONSTRAINT "RoadConditions_edgeNodeId_3b89422e_fk_EdgeNodes_id" FOREIGN KEY ("edgeNodeId") REFERENCES public."EdgeNodes"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: TrainingInstructionsLabelDatasets TrainingInstructions_TrainingInstId_74880888_fk_TrainingI; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructionsLabelDatasets"
    ADD CONSTRAINT "TrainingInstructions_TrainingInstId_74880888_fk_TrainingI" FOREIGN KEY ("TrainingInstId") REFERENCES public."TrainingInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: TrainingInstructions TrainingInstructions_dataSplitInst_f2f86e68_fk_DataSplit; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructions"
    ADD CONSTRAINT "TrainingInstructions_dataSplitInst_f2f86e68_fk_DataSplit" FOREIGN KEY ("dataSplitInst") REFERENCES public."DataSplitInstructions"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: TrainingInstructionsLabelDatasets TrainingInstructions_labelDatasetId_516be3ef_fk_LabelData; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TrainingInstructionsLabelDatasets"
    ADD CONSTRAINT "TrainingInstructions_labelDatasetId_516be3ef_fk_LabelData" FOREIGN KEY ("labelDatasetId") REFERENCES public."LabelDatasets"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: Users Users_organizationId_64318c7f_fk_Organizations_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_organizationId_64318c7f_fk_Organizations_id" FOREIGN KEY ("organizationId") REFERENCES public."Organizations"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

