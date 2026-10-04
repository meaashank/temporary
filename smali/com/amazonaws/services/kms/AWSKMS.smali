###### Class com.amazonaws.services.kms.AWSKMS (com.amazonaws.services.kms.AWSKMS)
.class public interface abstract Lcom/amazonaws/services/kms/AWSKMS;
.super Ljava/lang/Object;
.source "AWSKMS.java"


# virtual methods
.method public abstract a(Lcom/amazonaws/services/kms/model/CancelKeyDeletionRequest;)Lcom/amazonaws/services/kms/model/CancelKeyDeletionResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ConnectCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/ConnectCustomKeyStoreResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/CreateCustomKeyStoreResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/CreateGrantRequest;)Lcom/amazonaws/services/kms/model/CreateGrantResult;
.end method

.method public abstract a()Lcom/amazonaws/services/kms/model/CreateKeyResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/services/kms/model/CreateKeyResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/services/kms/model/DecryptResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/DeleteCustomKeyStoreResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresRequest;)Lcom/amazonaws/services/kms/model/DescribeCustomKeyStoresResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DescribeKeyRequest;)Lcom/amazonaws/services/kms/model/DescribeKeyResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/DisconnectCustomKeyStoreResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/services/kms/model/EncryptResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyWithoutPlaintextResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/GenerateRandomRequest;)Lcom/amazonaws/services/kms/model/GenerateRandomResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/GetKeyPolicyRequest;)Lcom/amazonaws/services/kms/model/GetKeyPolicyResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/GetKeyRotationStatusRequest;)Lcom/amazonaws/services/kms/model/GetKeyRotationStatusResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/GetParametersForImportRequest;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ListAliasesRequest;)Lcom/amazonaws/services/kms/model/ListAliasesResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ListGrantsRequest;)Lcom/amazonaws/services/kms/model/ListGrantsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ListKeyPoliciesRequest;)Lcom/amazonaws/services/kms/model/ListKeyPoliciesResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ListKeysRequest;)Lcom/amazonaws/services/kms/model/ListKeysResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ListResourceTagsRequest;)Lcom/amazonaws/services/kms/model/ListResourceTagsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ListRetirableGrantsRequest;)Lcom/amazonaws/services/kms/model/ListRetirableGrantsResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ReEncryptRequest;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionRequest;)Lcom/amazonaws/services/kms/model/ScheduleKeyDeletionResult;
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;)Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreResult;
.end method

.method public abstract a(Lcom/amazonaws/regions/Region;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/CreateAliasRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DeleteAliasRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DeleteImportedKeyMaterialRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DisableKeyRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/DisableKeyRotationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/EnableKeyRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/EnableKeyRotationRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/PutKeyPolicyRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/RetireGrantRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/RevokeGrantRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/TagResourceRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/UntagResourceRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/UpdateAliasRequest;)V
.end method

.method public abstract a(Lcom/amazonaws/services/kms/model/UpdateKeyDescriptionRequest;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b_()Lcom/amazonaws/services/kms/model/ListKeysResult;
.end method

.method public abstract c_(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
.end method

.method public abstract c_()Lcom/amazonaws/services/kms/model/ListAliasesResult;
.end method

.method public abstract d_()V
.end method

.method public abstract e()V
.end method

.method public abstract e_()Lcom/amazonaws/services/kms/model/GenerateRandomResult;
.end method
