package android.app.job;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class JobWorkItem implements Parcelable {
    public static final Parcelable.Creator<JobWorkItem> CREATOR = new Parcelable.Creator<JobWorkItem>() { // from class: android.app.job.JobWorkItem.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobWorkItem createFromParcel(Parcel parcel) {
            return new JobWorkItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JobWorkItem[] newArray(int i) {
            return new JobWorkItem[i];
        }
    };
    int mDeliveryCount;
    Object mGrants;
    final Intent mIntent;
    int mWorkId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public JobWorkItem(Intent intent) {
        this.mIntent = intent;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public int getDeliveryCount() {
        return this.mDeliveryCount;
    }

    public void bumpDeliveryCount() {
        this.mDeliveryCount++;
    }

    public void setWorkId(int i) {
        this.mWorkId = i;
    }

    public int getWorkId() {
        return this.mWorkId;
    }

    public void setGrants(Object obj) {
        this.mGrants = obj;
    }

    public Object getGrants() {
        return this.mGrants;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("JobWorkItem{id=");
        sb.append(this.mWorkId);
        sb.append(" intent=");
        sb.append(this.mIntent);
        if (this.mDeliveryCount != 0) {
            sb.append(" dcount=");
            sb.append(this.mDeliveryCount);
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.mIntent != null) {
            parcel.writeInt(1);
            this.mIntent.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.mDeliveryCount);
        parcel.writeInt(this.mWorkId);
    }

    JobWorkItem(Parcel parcel) {
        if (parcel.readInt() != 0) {
            this.mIntent = (Intent) Intent.CREATOR.createFromParcel(parcel);
        } else {
            this.mIntent = null;
        }
        this.mDeliveryCount = parcel.readInt();
        this.mWorkId = parcel.readInt();
    }
}
